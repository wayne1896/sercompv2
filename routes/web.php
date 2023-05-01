<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuarioController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
var_dump($sector->nombre_ciudad);

|
*/
//use App\Models\sector;


Route::get('/', function () {

/*
    $sector = sector::all();
    foreach ($sector as $sector) {
       echo $sector->id_sector."<br/>";
       echo $sector->nombre_sector."<br/>";
       echo $sector->ciudad->id_ciudad.' '.$sector->ciudad->nombre_ciudad."<br/>";
       
    }
die();
*/

    return view('welcome');
});

Route::resource('usuario', UsuarioController::class);

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
