<?php

namespace App\Services;

use App\Services\Interfaces\UserServiceInterface;
use App\Reponsitories\Interfaces\UserReponsitoryInterface as UserReponsitory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;


/**
 * Class UserService
 * @package App\Services
 */
class UserService implements UserServiceInterface
{
    protected $userReponsitory;

    public function __construct(UserReponsitory $userReponsitory)
    {
        $this->userReponsitory = $userReponsitory;
    }

    public function paginate($request){
        $condition['keyword'] = addcslashes($request->input('keyword'), '');
        $users = $this->userReponsitory->getPaginate($this->paginateSelect(), $condition, 10);
        return $users;
    }


    public function create($request){
        DB::beginTransaction();
        try {
            $payload = $request->input();
            $payload = $request->except(['_token', 're_password']);
            $payload['password'] = Hash::make($payload['password']);
            $user = $this->userReponsitory->create($payload);

            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            echo $e->getMessage();
            return false;
        }
    }

    public function update($request, $id){
        DB::beginTransaction();
        try {
            $user = $this->userReponsitory->findById($id);
            $payload = $request->input();
            $payload = $request->except(['_token', 're_password']);
            $payload['password'] = Hash::make($payload['password']);
            
            $user = $this->userReponsitory->update($payload, $id);

            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            echo $e->getMessage();
            return false;
        }
    }

    public function delete($id){
        DB::beginTransaction();
        try {
            $user = $this->userReponsitory->delete($id);
            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            echo $e->getMessage();
            return false;
        }
    }

    public function changeStatus($post = []){
        
        DB::beginTransaction();
        try {
            $payload[$post['field']] = ($post['value'] == 1) ? 0 : 1;
            
            $user = $this->userReponsitory->update($payload, $post['modelId']);

            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            echo $e->getMessage();
            return false;
        }
    }



    public function findByid($id){
        $user = $this->userReponsitory->findById($id);
        return $user;
    }

    private function paginateSelect(){
        return [
            'id',
            'name',
            'email',
            'created_at',
            'updated_at',
            'publish',
        ];
    }
}
