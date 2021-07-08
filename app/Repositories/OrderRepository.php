<?php


namespace App\Repositories;


use App\Http\Resources\API\V1\OrderResource;
use App\Interfaces\OrderInterface;
use App\Mail\OrderPlaced;
use App\Models\API\V1\Delivery;
use App\Models\API\V1\Order;
use App\Models\API\V1\OrderProduct;
use App\Models\API\V1\Product;
use App\Models\API\V1\User;
use App\Traits\GeneralTrait;
use App\Traits\ResponseTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use phpDocumentor\Reflection\Types\Null_;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Cartalyst\Stripe\Exception\CardErrorException;

class OrderRepository implements OrderInterface
{
    use ResponseTrait; use GeneralTrait;

    protected $paginate_count = 10;

    public function store($request)
    {
        $product = Product::find($request->product_id);

        $totalAmount = $this->getTotalAmount($request);

        try {

            $order = $this->addToOrdersTables($request, null, $product);
            if (app()->environment('production')){
                //Strip Ordering
                $token = Stripe::tokens()->create([
                    'card' => [
                        'number'    => $request->card,
                        'exp_month' => $request->ccExpiryMonth,
                        'exp_year'  => $request->ccExpiryYear,
                        'cvc'       => $request->cvvNumber,
                    ],
                ]);

                $charge = Stripe::charges()->create([
                    'amount' => $totalAmount,
                    'currency' => 'CAD',
                    'source' => $request->stripeToken,
                    'description' => 'Order',
                    'receipt_email' => $request->email,
                ]);
                //
                Mail::send(new OrderPlaced($order));

            }
            return $this->returnSuccessMessage(__('messages.order_success'), '0000');

        } catch (\CardErrorException $exception) {
            $this->addToOrdersTables($request, $exception->getMessage(), $product);
            return $this->returnError(500,'Error! ' . $exception->getMessage());
        }
    }
    public function addToOrdersTables($request, $error, $product)
    {
        // Insert into orders table
        $order = Order::create([
            'user_id' => Auth::user()->id,
            'email' => $request->email,
            'name' => $request->name,
            'address' => $request->address,
            'city' => $request->city,
            'province' => $request->province,
            'postalcode' => $request->postalcode,
            'phone' => $request->phone,
            'name_on_card' => $request->name_on_card,
            'discount' => $product->offer,
            'payment_gateway' => 'strip',
            'discount_code' => Null,
            'tax' => 13,
            'total' => $this->getTotalAmount($request),
            'subtotal' => $this->getTotalAmount($request),
            'error' => $error,
        ]);

        // Insert into order_product table
        OrderProduct::create([
            'order_id' => $order->id,
            'product_id' => $request->product_id,
            'quantity' => $request->quantity,
        ]);
        return $order;
    }

    public function getTotalAmount($request){
        $product = Product::find($request->product_id);
        $quantity = isset($request->quantity) ? $request->quantity : 1;
        $offer = $product->offer ? ($product->price * $quantity) * $product->offer /100 : 0 ;
        $totalAmount = ($product->price * $quantity ) +  config('app.tax')  - $offer;
        return $totalAmount;
    }

    public function getMerchantOrders()
    {
        if (Auth::user()->hasRole('Merchant')) {
            try {

                $orders = DB::table('order_product')
                    ->join('products', 'products.id', '=', 'order_product.product_id')
                    ->join('orders', 'orders.id', '=', 'order_product.order_id')
                    ->where('products.created_by', '=', Auth::user()->id)
                    ->paginate($this->paginate_count);

                $data = OrderResource::collection($orders)->response()->getData(true);

                return $this->returnData('data', $data, __('messages.current_order'));
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }

        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }

    public function getDriverOrders()
    {
        if (Auth::user()->hasRole('Driver')) {
            try {

                $orders = DB::table('order_product')
                    ->join('products', 'products.id', '=', 'order_product.product_id')
                    ->join('orders', 'orders.id', '=', 'order_product.order_id')
                    ->join('deliveries', 'deliveries.order_id', '=', 'order_product.order_id')
                    ->where('deliveries.driver_id', '=', Auth::user()->id)
                    ->paginate($this->paginate_count);

                $data = OrderResource::collection($orders)->response()->getData(true);

                return $this->returnData('data', $data, __('messages.current_order'));
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }

    public function getCustomerOrders()
    {
        try {

        $orders = DB::table('order_product')
        ->join('products', 'products.id', '=', 'order_product.product_id')
        ->join('orders', 'orders.id', '=', 'order_product.order_id')
        ->where('orders.user_id', '=', Auth::user()->id)
        ->paginate($this->paginate_count);

        $data = OrderResource::collection($orders)->response()->getData(true);

            return $this->returnData('data', $data, __('messages.current_order'));
        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }

    }

    public function assignOrdersToDelivery($request)
    {
        if (Auth::user()->hasRole('Merchant')) {
            try {
                $rules = [
                    'order_id' => 'required|numeric',
                    'driver_id' => 'required|numeric'
                ];
                $validator = Validator::make($request->all(), $rules);

                if ($validator->fails()) {
                    return $this->returnValidationError(405, $validator);
                }

                $ifassigned = Delivery::where('order_id', $request->order_id)->get();

                if (count($ifassigned) >=1){
                    return $this->returnError(403, __('errors.already_assigned'));
                }
                $model = new Delivery();
                $model->create([
                    'order_id' => $request->order_id,
                    'driver_id' => $request->driver_id,
                    'created_by' => Auth::user()->id,
                ]);

                return $this->returnSuccessMessage( __('messages.assigned'), '0000');

            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }

    public function getDrivers()
    {
        if (Auth::user()->hasRole('Merchant')) {
            try {

                $driver = User::where('role', 'Driver')->select('id', 'name', 'email', 'role')->get();
                return $this->returnData('data', $driver, __('messages.drivers'));

            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }
}
