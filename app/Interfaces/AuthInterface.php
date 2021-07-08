<?php


namespace App\Interfaces;


use PHPUnit\Util\Json;

interface AuthInterface
{
    /** register new User .
     * @param $request
     * @return json
     */
    public function register($request);

    /** login User.
     * @param $request
     * @return json
     */
    public function login($request);

    /** User Profile.
     * @param $request
     * @return json
     */
    public function profile($request);

    /** logout user .
     * @return json
     */
    public function logout();

}
