<?php


namespace App\Interfaces;


use PHPUnit\Util\Json;

interface CategoryInterface
{
    /** Display a listing of the Categories.
     * @return json
     */
    public function index();

    /** Store a newly created Category in storage.
     * @param $request
     * @return json
     */
    public function store($request);

    /** Display the specified Category.
     * @param $id
     * @return json
     */
    public function show($id);

    /** Update the specified Category in storage.
     * @param $request
     * @param $id
     * @return json
     */
    public function update($request, $id);

    /** Remove the specified Category from storage.
     * @param $id
     * @return json
     */
    public function destroy($id);

}
