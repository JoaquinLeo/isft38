<?php

use App\Http\Controllers\InscripcionController;



/*
|--------------------------------------------------------------------------
| Turnos, cupos e inscripciones                           Roba,Garzón,Vera
|--------------------------------------------------------------------------
*/


Route::resource('inscripciones', InscripcionController::class);


Route::get('inscripciones/cancelar/{hash}', [InscripcionController::class, 'cancelar'])->name('inscripciones.cancelar');



