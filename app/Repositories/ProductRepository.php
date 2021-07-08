<?php


namespace App\Repositories;


use App\Http\Resources\API\V1\ProductResource;
use App\Interfaces\ProductInterface;
use App\Models\API\V1\Product;
use App\Traits\GeneralTrait;
use App\Traits\ResponseTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use PHPUnit\Util\Json;

class ProductRepository implements ProductInterface
{
    use ResponseTrait; use GeneralTrait;

    protected $paginate_count = 10;

    public function index()
    {
        try {
            $products = Product::paginate($this->paginate_count);
            $data =  ProductResource::collection($products)->response()->getData(true);
            return $this->returnData('data', $data, __('messages.products'));
        } catch (\Exception $exception) {
            return $this->returnError(500, __('errors.server_error'));
        }
    }

    public function store($request)
    {
        if (Auth::user()->hasRole('Merchant')) {
            try{
                $model = new Product();
                $data = $this->storeData($request, $model);
                return $this->returnData('data', new ProductResource($data), __('messages.product_stored'));
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }

    }

    public function show($id)
    {
        try {
            $product = Product::find($id);
            return $this->returnData('data', new ProductResource($product), __('messages.product_returned'));
        } catch (\Exception $exception) {
            return $this->returnError(500, __('errors.server_error'));
        }
    }

    public function update($request, $id)
    {
        if (Auth::user()->hasRole('Merchant')) {
            try {
                $data = $this->updateData($request, $id, Product::class);
                return $this->returnData('data', new ProductResource($data), __('messages.product_updated'));
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }

    public function destroy($id)
    {
        if (Auth::user()->hasRole('Merchant')) {

            try {
            $product = Product::find($id);
            if (isset($product)){
                $product->delete();
                return $this->returnSuccessMessage( __('messages.product_deleted'), '0000');
            }else{
                return $this->returnError(404, __('errors.product_notfound'));
            }
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }

    public function updateStatus($request, $id)
    {
        if (Auth::user()->hasRole(['Merchant', 'Driver'])) {
           try {
                $rules = [ 'delivered' => ['required', 'numeric', Rule::in( [ 0, 1 ] ) ] ];

                $validator = Validator::make($request->all(), $rules);

                if ($validator->fails()) {
                    return $this->returnValidationError(405, $validator);
                }
                $product = Product::find($id);
                $product->delivered = $request->delivered;
                $product->save();
                return $this->returnData('data', new ProductResource($product), __('messages.product_updated'));
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }
}
