<?php


namespace App\Http\Controllers\API\V1;


use App\Http\Requests\API\V1\UserRequest;
use App\Models\API\V1\User;

use App\Repositories\AuthRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    protected $authRepository;

    public function __construct(AuthRepository $authRepository)
    {
        $this->authRepository = $authRepository;
    }

    public function register(UserRequest $request)
    {
        return $this->authRepository->register($request);
    }

    public function login(Request $request)
    {
        return $this->authRepository->login($request);
    }

    public function profile(Request $request)
    {
        return $this->authRepository->profile($request);
    }

    public function logout()
    {
        return $this->authRepository->logout();
    }
}
