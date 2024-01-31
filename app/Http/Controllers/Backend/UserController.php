<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Services\Interfaces\UserServiceInterface as UserService;

class UserController extends Controller
{
    //
    protected $userService;

    public function __construct(UserService $userService)
    {      
        $this->userService = $userService;
    }

    public function index()
    {
        $users = $this->userService->paginate();

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
        $view  = 'backend.user.create';
        return view(
            'backend.layout', compact('view', 
            'config'
            ),
        );
    }

    private function config()
    {
        return  [
            'js'    => ['backend/js/plugins/switchery/switchery.js'],
            'css'   => ['backend/css/plugins/switchery/switchery.css'],
        ];
    }
}
