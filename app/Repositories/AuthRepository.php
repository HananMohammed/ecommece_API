<?php


namespace App\Repositories;


use App\Interfaces\AuthInterface;
use App\Models\API\V1\User;
use App\Models\API\V1\Wallet;
use App\Traits\ResponseTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use PHPUnit\Util\Json;

class AuthRepository implements AuthInterface
{
    use ResponseTrait;

    public function register($request)
    {
        try {
            $user = User::create([
                'name' => $request->name,
                'password' =>  Hash::make($request->password),
                'wallet_password' =>  Hash::make($request->wallet_password),
                'email' => $request->email,
                'role' => $request->role
            ]);
            $user->assignRole($user->role);
            $data = [
                "access_token" => $user->createToken('auth_token')->plainTextToken,
                'token_type' => 'Bearer',
            ];

            Wallet::create([
                'user_id' => $user->id,
                'money'   => 0 ,
                'transfer_status' => 1,
            ]);

            return $this->returnData('data', $data, __('messages.registered'));

        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }

    }

    public function login($request)
    {
        try {

            if (!Auth::attempt($request->only('email', 'password')))
                return $this->returnError(401, 'Invalid login details');
            $user = User::where('email', $request->email)->firstOrFail();

            $data = [
                "access_token" => $user->createToken('auth_token')->plainTextToken,
                'token_type' => 'Bearer',
            ];

            return $this->returnData('data', $data, __('messages.login'));
        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }
    }

    public function profile($request)
    {
        try{
            $user =  $request->user();
            unset($user['wallet_password'], $user['email_verified_at']);
            return $this->returnData('data', $user, __('messages.profile'));
        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }
    }
    public function logout()
    {
        try{
            $user = Auth::user();
            $user->tokens()->where('id', $user->currentAccessToken()->id)->delete();
            return $this->returnSuccessMessage(__('messages.logout'), '0000');

        }catch (\Exception $exception){
            return $this->returnError(500, __('errors.server_error'));
        }
    }


}
