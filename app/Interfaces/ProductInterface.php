<?php


namespace App\Interfaces;


use PHPUnit\Util\Json;

interface ProductInterface
{
    /** Display a listing of the Products.
     * @return json
     */
    public function index();

    /** Store a newly created Product in storage.
     * @param $request
     * @return json
     */
    public function store($request);

    /** Display the specified Product.
     * @param $id
     * @return json
     */
    public function show($id);

    /** Update the specified Product in storage.
     * @param $request
     * @param $id
     * @return json
     */
    public function update($request, $id);

    /** Remove the specified Product from storage.
     * @param $id
     * @return json
     */
    public function destroy($id);

    /** Update Product status delivered or not.
     * @return json
     */
    public function updateStatus($request);
}
