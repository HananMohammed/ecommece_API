<?php


namespace App\Http\Controllers\API\V1;


use App\Http\Requests\API\V1\CheckoutRequest;
use App\Repositories\OrderRepository;
use Illuminate\Http\Request;

class OrderController
{

    protected $orderRepository;

    public function __construct(OrderRepository $orderRepository)
    {
        $this->orderRepository = $orderRepository;
    }

    public function store(CheckoutRequest $request)
    {
        return $this->orderRepository->store($request);
    }

    public function getMerchantOrders()
    {
        return $this->orderRepository->getMerchantOrders();
    }

    public function getDriverOrders()
    {
        return $this->orderRepository->getDriverOrders();
    }

    public function getCustomerOrders()
    {
        return $this->orderRepository->getCustomerOrders();
    }

    public function assignOrdersToDelivery(Request $request)
    {
        return $this->orderRepository->assignOrdersToDelivery($request);
    }

    public function getDrivers()
    {
        return $this->orderRepository->getDrivers();
    }


}
