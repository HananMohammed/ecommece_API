<?php


namespace App\Interfaces;


use PHPUnit\Util\Json;

interface OrderInterface
{
    /** Store a newly created Category in storage.
     * @param $request
     * @return json
     */
    public function store($request);

    /** addToOrdersTables
     * @param $request
     * @param $error
     * @return mixed
     */
    public function addToOrdersTables($request, $error, $product);

    /** getTotalAmount
     * @param $request
     * @return mixed
     */
    public function getTotalAmount($request);

    /**
     * @return mixed
     */
    public function getMerchantOrders();

    /**
     * @return mixed
     */
    public function getDriverOrders();
    /**
     * @return mixed
     */
    public function getCustomerOrders();

    /**
     * @param $request
     * @return mixed
     */
    public function assignOrdersToDelivery($request);

    /**
     * @return mixed
     */
    public function getDrivers();

}
