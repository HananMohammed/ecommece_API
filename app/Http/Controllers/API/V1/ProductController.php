<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\API\V1\ProductRequest;
use App\Models\API\V1\Product;
use App\Repositories\ProductRepository;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ProductController extends Controller
{
    protected $productRepository;

    public function __construct(ProductRepository $productRepository)
    {
        $this->productRepository = $productRepository;
    }

    public function index()
    {
        return $this->productRepository->index();
    }

    public function store(ProductRequest $request)
    {
        return $this->productRepository->store($request);
    }

    public function show($id)
    {
        return $this->productRepository->show($id);
    }

    public function update(ProductRequest $request, $id)
    {
        return $this->productRepository->update($request, $id);
    }

    public function destroy($id)
    {
        return $this->productRepository->destroy($id);
    }

    public function updateStatus(Request $request){

        return $this->productRepository->updateStatus($request);
    }

}
