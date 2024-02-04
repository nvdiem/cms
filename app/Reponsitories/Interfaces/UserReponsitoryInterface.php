<?php

namespace App\Reponsitories\Interfaces;

/**
 * Interface UserReponsitoryInterface
 * @package App\Reponsitories\Interfaces
 */
interface UserReponsitoryInterface
{

    public function getPaginate(
        $columns = ['*'],
        $condition = [],
        $perPage = 10);

    public function create(array $payload = []);
    
    public function findById($id);

    public function update(array $payload = [], $id);

    public function delete($id);
}
