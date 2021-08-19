<?php


namespace App\Repositories;


use App\Http\Resources\API\V1\CategoryResource;
use App\Interfaces\CategoryInterface;
use App\Models\API\V1\Category;
use App\Models\API\V1\Product;
use App\Traits\GeneralTrait;
use App\Traits\ResponseTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

class CategoryRepository implements CategoryInterface
{
    use ResponseTrait; use GeneralTrait;

    public function index()
    {
        try {
            $categories =Category::paginate(10);
            return $this->returnData('data', CategoryResource::collection($categories)->response()->getData(true), __('messages.categories'));
        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }
    }

    public function store($request)
    {

        if (Auth::user()->hasRole('Merchant')){
            try{
                $model = new Category();
                $data = $this->storeData($request, $model);
                return $this->returnData('data', new CategoryResource($data), __('messages.category_stored'));
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
            $category = Category::find($id);
            return $this->returnData('data', new CategoryResource($category), __('messages.category_returned'));
        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }
    }

    public function update($request, $id)
    {
        if (Auth::user()->hasRole('Merchant')){
            try {
                $data = $this->updateData($request, $id, Category::class);
                return $this->returnData('data', new CategoryResource($data), __('messages.category_updated'));
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }

    public function destroy($id)
    {
        if (Auth::user()->hasRole('Merchant')){
            try {
                $category = Category::find($id);

                if (isset($category)){
                    $products = Product::where('category_id', $id)->get();
                    if (!empty($products)){
                        foreach ($products as $product)
                            $product->delete();
                    }
                    $category->delete();
                    return $this->returnSuccessMessage( __('messages.category_deleted'), '0000');
                }else{
                    return $this->returnError(404, __('errors.category_notfound'));
                }
            }catch (\Exception $exception){
                return $this->returnError(500, __('errors.server_error'));
            }
        }else{
            return $this->returnError(403, __('errors.unauthorized'));
        }
    }
}
