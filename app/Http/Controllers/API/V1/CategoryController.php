<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\API\V1\CategoryRequest;
use App\Repositories\CategoryRepository;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    protected $categoryRepository;

    public function __construct(CategoryRepository $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    public function index()
    {
        return $this->categoryRepository->index();
    }

    public function store(CategoryRequest $request)
    {
        return $this->categoryRepository->store($request);
    }

    public function show($id)
    {
        return $this->categoryRepository->show($id);
    }

    public function update(CategoryRequest $request, $id)
    {
        return $this->categoryRepository->update($request, $id);
    }

    public function destroy($id)
    {
        return $this->categoryRepository->destroy($id);
    }
}
