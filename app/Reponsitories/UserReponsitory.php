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
    public function getPaginate(){
        $users = User::paginate(10);
        return $users;
    }
}
