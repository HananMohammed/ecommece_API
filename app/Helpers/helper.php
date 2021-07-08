<?php

if (!function_exists('makeAvatar')){

    /** Create Avatar
     * @param $fontPath
     * @param $dest
     * @param $char
     * @return mixed
     */
    function makeAvatar($fontPath, $dest, $char){
        $path = $dest;
        $image = imagecreate(200, 200);
        $red = rand(0, 255);
        $green = rand(0, 255);
        $blue = rand(0, 255);
        imagecolorallocate($image, $red, $green, $blue);
        $textcolor = imagecolorallocate($image, 255, 255, 255);
        imagettftext($image, 100, 0 , 50, 150, $textcolor, $fontPath, $char);
        imagepng($image, $path);
        imagedestroy($image);
        return $path;
    }
}

if (!function_exists('getLoggedInUserId')){
    function getLoggedInUserId(){
        return auth()->user()->id;
    }
}

if (!function_exists('getImageUrl')) {
    function getImageUrl($folder, $file)
    {
        $rootPath = request()->root();
        return $rootPath . '/storage/uploads/' . $folder . '/' . $file;
    }
}

if (!function_exists('errorMessage')) {
    function errorMessage($message, $errorNum)
    {
        $data = [
            'status' => false,
            'ErrorNum' => $errorNum,
            'message' => $message,
        ];
        return response()->json($data, 501);
    }
}

if (!function_exists('successMessage')) {
    function successMessage($message, $data=[])
    {
        $data = [
            'status' => true,
            'ErrorNum' => '0000',
            'data' => $data,
            'message' => $message,
        ];
        return response()->json($data, 200);
    }
}


if (!function_exists('orderAmount')) {
    function orderAmount()
    {
        $tax = config('cart.tax') / 100;
        $discount = session()->get('coupon')['discount'] ?? 0;
        $code = session()->get('coupon')['name'] ?? null;
        $newSubtotal = (Cart::subtotal() - $discount);
        if ($newSubtotal < 0) {
            $newSubtotal = 0;
        }
        $newTax = $newSubtotal * $tax;
        $newTotal = $newSubtotal * (1 + $tax);

        return collect([
            'tax' => $tax,
            'discount' => $discount,
            'code' => $code,
            'newSubtotal' => $newSubtotal,
            'newTax' => $newTax,
            'newTotal' => $newTotal,
        ]);
    }
}

