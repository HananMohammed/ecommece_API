<?php

namespace App\Providers;

use App\Http\Resources\API\V1\OrderResource;
use App\Http\Resources\API\V1\ProductResource;
use App\Models\API\V1\User;
use Illuminate\Support\ServiceProvider;
use Laravel\Cashier\Cashier;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        Cashier::ignoreMigrations();

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Cashier::useCustomerModel(User::class);
        OrderResource::withoutWrapping();
        ProductResource::withoutWrapping();

    }
}
