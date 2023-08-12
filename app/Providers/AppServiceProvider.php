<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();

        View::composer('*', function($view){
            $uid = Session::get('LoggedUsr');
            if ($uid == null){
                // TO-DO Need to check if this happens, or SharedController::checkAuthenticated takes precidence
            } else {
                $view->with('companySelected', User::find($uid)->companyId);
                $view->with('usertype', User::find($uid)->usertype);
            }
        });

    }
}
