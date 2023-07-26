<?php

use App\Http\Controllers\CupoController;



/*
|--------------------------------------------------------------------------
| Horario y Módulos horarios                           Aylén, Sofía, Ulises
|--------------------------------------------------------------------------
*/


Route::group(['middleware' => ['admin']], function () {
    Route::resource('cupos', CupoController::class);
});

