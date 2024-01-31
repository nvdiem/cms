<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    
    public $bindings = [
        'App\Services\Interfaces\UserServiceInterface' => 'App\Services\UserService',
        'App\Reponsitories\Interfaces\UserReponsitoryInterface' => 'App\Reponsitories\UserReponsitory',
        
    ];
    
    /**
     * Register any application services.
     */
    public function register(): void
    {
        foreach ($this->bindings as $interface => $service) {
            $this->app->bind($interface, $service);
        }
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
