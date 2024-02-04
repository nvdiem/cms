<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Services\Interfaces\UserServiceInterface as UserService;

use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;

class UserController extends Controller
{
    //
    protected $userService;

    public function __construct(UserService $userService)
    {      
        $this->userService = $userService;
    }

    public function index(Request $request)
    {
        $users = $this->userService->paginate($request);

        $config = $this->config();
        $config['seo'] = config('apps.user');

        $view  = 'backend.user.index';
        return view(
            'backend.layout', compact('view', 
            'config',
            'users'
            ),
        );
    }

    public function create()
    {
        $config = $this->config();
        $config['seo'] = config('apps.user');
        $config['method'] = 'create';
        
        $view  = 'backend.user.store';
        return view(
            'backend.layout', compact('view', 
            'config'
            ),
        );
    }

    public function store(StoreUserRequest $request)
    {
        if($this->userService->create($request)){
            return redirect()->route('user.index')->with('success', 'Thêm mới thành công');
        }
        return redirect()->route('user.index')->with('error', 'Thêm mới thất bại');
    }

    public function edit($id)
    {
        $user = $this->userService->findByid($id);
        $config = $this->config();
        $config['seo'] = config('apps.user');
        $config['method'] = 'edit';
        $view  = 'backend.user.store';
        return view(
            'backend.layout', compact('view', 
            'config',
            'user'
            ),
        );
    }

    public function update(UpdateUserRequest $request, $id)
    {
        if($this->userService->update($request, $id)){
            return redirect()->route('user.index')->with('success', 'Cập nhật thành công');
        }
        return redirect()->route('user.index')->with('error', 'Cập nhật thất bại');
    }

    public function delete($id)
    {
        $user = $this->userService->findByid($id);
        $config = $this->config();
        $config['seo'] = config('apps.user');
        $config['method'] = 'delete';
        $view  = 'backend.user.delete';
        return view(
            'backend.layout', compact('view', 
            'config',
            'user'
            ),
        );
    }

    public function destroy($id)
    {
        if($this->userService->delete($id)){
            return redirect()->route('user.index')->with('success', 'Xóa thành công');
        }
        return redirect()->route('user.index')->with('error', 'Xóa thất bại');
    }


    private function config()
    {
        return  [
            'js'    => ['backend/js/plugins/switchery/switchery.js'],
            'css'   => ['backend/css/plugins/switchery/switchery.css'],
        ];
    }
}
