<?php

namespace App\Exceptions;

use Error;
use Illuminate\Database\QueryException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use InvalidArgumentException;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    
    {
        $this->reportable(function (Throwable $e) {
            //
        });

        // $this->renderable(function(QueryException $e){

        //     $data['code'] = $e->getCode();
        //     $data['errMsg'] = $e->getMessage();
        //     return view('v1.Errors.Error')->with($data);
        // });
        
        // $this->renderable(function(InvalidArgumentException $e){

        //     $data['code'] = $e->getCode();
        //     $data['errMsg'] = $e->getMessage();
        //     return view('v1.Errors.Error')->with($data);
        // });
        // $this->renderable(function(Error $e){

        //     $data['code'] = 'Error';
        //     $data['errMsg'] = $e->getMessage();
        //     return view('v1.Errors.Error')->with($data);
        // });

        // $this->renderable(function(ErrorException $e, $request){

        //     if($e->getStatusCode() == 419){

        //         $url = $request->url();

        //         if(str_contains($url, '/action') || str_contains($url, '/delete')) return response()->json(['Status' =>  false, 'Msg' => 'Token is expired', 'ErrCD' => 419], status:419);
        //         else{
        //             if(str_contains($url, 'bus-ryde/user')) return redirect()->route('get-login');
        //             else return redirect()->route('get-index');
        //         }
        //     }
        // });

    }
}
