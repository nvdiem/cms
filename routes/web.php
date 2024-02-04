<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\AuthController;
use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Ajax\DashboardController as AjaxDashboardController;
use App\Http\Middleware\AuthenticateMiddleware;    
use App\Http\Middleware\LoginMiddleware;    

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*  Backend  Routes */

Route::get('dashboard/index', [DashboardController::class, 'index'])->name('dashboard.index')->middleware(AuthenticateMiddleware::class); 

/*  USER */
Route::group(['prefix' => 'user'], function () {
    Route::get('index', [UserController::class, 'index'])->name('user.index'); 
    Route::get('create', [UserController::class, 'create'])->name('user.create'); 
    Route::post('store', [UserController::class, 'store'])->name('user.store'); 
    Route::get('{id}/edit', [UserController::class, 'edit'])->name('user.edit')->where('id', '[0-9]+');
    Route::post('{id}/update', [UserController::class, 'update'])->name('user.update')->where('id', '[0-9]+');
    Route::get('show', [UserController::class, 'show'])->name('user.show'); 
    Route::get('{id}/delete', [UserController::class, 'delete'])->name('user.delete')->where('id', '[0-9]+');
    Route::delete('{id}/destroy', [UserController::class, 'destroy'])->name('user.destroy')->where('id', '[0-9]+');
});

Route::get('admin', [AuthController::class, 'index'])->name('auth.admin')->middleware(LoginMiddleware::class); 
Route::post('login', [AuthController::class, 'login'])->name('auth.login'); 
Route::get('logout', [AuthController::class, 'logout'])->name('auth.logout');


/*  AJAX  Routes */
Route::group(['prefix' => 'ajax'], function () {
    Route::post('/dashboard/changeStatus', [AjaxDashboardController::class, 'changeStatus'])->name('ajax.dashboard.changeStatus'); 
    
});
