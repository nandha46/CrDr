<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;
use NumberFormatter;

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

        // View::share('companySelected', 1);

        View::composer('*', function($view){
            $uid = Session::get('LoggedUsr');
            if ($uid == null){
                $view->with('companySelected', $uid);
            } else {
                $view->with('companySelected', User::find($uid)->companyId);
            }
        });

    }
}
