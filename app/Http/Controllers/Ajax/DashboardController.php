<?php

namespace App\Http\Controllers\Ajax;

use App\Http\Controllers\Controller;
use App\Services\Interfaces\UserServiceInterface as UserService;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //
    protected $userService;

    public function __construct(UserService $userService)
    {      
        $this->userService = $userService;
    }
    public function changeStatus(Request $request)
    {
        $post = $request->input();

        // $serviceInterfaceNamespace = '\App\Services\\' . ucfirst($post['model']) . 'Service';
        // if(class_exists($serviceInterfaceNamespace)){
        //     $serviceInstance = app($serviceInterfaceNamespace);
        // }
        
        $flag = $this->userService->changeStatus($post);
        return response()->json(['flag' => $flag]);
    }
 
   
    
}
