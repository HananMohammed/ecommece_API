<?php

namespace App\Traits;


use Illuminate\Support\Facades\Auth;

Trait GeneralTrait
{
    /**
     * @param $request
     * @param $model
     * @throws
     */
    public function storeData($request, $model)
    {
        foreach ( $request->input() as $key => $value)
        {
            if($key !='_token' && $key != '_method')
            {
                (is_array($value)) ? $model->$key = json_encode($value)
                    : $model->$key = $value ;
            }
            $model->created_by = Auth::user()->id;
        }
        if(empty($request->file())){
            $model->image = $this->createAvatar($request, 'storage/uploads/contacts/');
        }else{
            if (is_array($request->file()))
            {
                foreach ($request->file() as $key =>$value)
                {
                    $imageName = $key . time() . '.' . $value->getClientOriginalExtension();

                    $value->storeAs('public/uploads/'.$model->getTable().'/', $imageName );
                    $model->$key = $imageName;
                }
            }
        }


        $model -> save() ;
        return $model;

    }

    public function updateData($request, $id, $model)
    {
        $model = $model::find($id);
        $model = $this->storeData($request, $model);

        return $model;
    }
    public function uploadImage($request, $model){

        $imageName = 'image'.time() . '.' . $request->file('photo_url')->getClientOriginalExtension();
        $request->file('photo_url')->storeAs('public/uploads/'.$model->getTable().'/', $imageName );
        return  $imageName;
    }

    public function createAvatar($request, $url){
        $path = public_path($url);
        $fontPath = public_path('fonts/Philosopher-BoldItalic.ttf');
        $char = strtoupper($request->name[0]);
        $newAvatarName = rand(12, 34353).time().'_avatar.png';
        $dest = $path.$newAvatarName;
        $createAvatar = makeAvatar($fontPath, $dest, $char);
        $createAvatar = makeAvatar($fontPath, $dest, $char);
        $picture = $createAvatar == true ? $newAvatarName : '';
        return $picture;
    }
}
