<?php

namespace App\Reponsitories;

use App\Reponsitories\Interfaces\UserReponsitoryInterface;
use App\Models\User;

/**
 * Class UserReponsitory
 * @package App\Reponsitories
 */
class UserReponsitory implements UserReponsitoryInterface
{
    public function getPaginate(
        $columns = ['*'],
        $condition = [],
        $perPage = 10
    ){
        $query = User::select($columns)->where(
            function($query) use ($condition){
                if(isset($condition['keyword']) && !empty($condition['keyword'])){
                    $query->where('name', 'like', '%'.$condition['keyword'].'%');
                }
            }
        );
        return $query->paginate($perPage)
                    ->withQueryString()->withPath(env('APP_URL').'/user/index');
        ;
    }

    public function create(array $payload = []){
        $user = User::create($payload);
        return $user;
    }

    public function findById($id){
        $user = User::find($id);
        return $user;
    }

    public function update(array $payload = [], $id){
        $user = User::find($id);
        $user->update($payload);
        return $user;
    }

    public function delete($id){
        $user = User::find($id);
        $user->delete();
        return $user;
    }

}
