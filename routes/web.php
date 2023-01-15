<?php

use App\Http\Controllers\InternalisasiController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index', ['title' => 'index']);
})->name('index');

Route::get('/form', function () {
    return view('form');
});
Route::get('/results', function () {
    return view('results');
});

Route::get('register', [UserController::class, 'register'])->name('register');
Route::post('register', [UserController::class, 'register_form'])->name('register.form');
Route::get('login', [UserController::class, 'login'])->name('login');
Route::post('login', [UserController::class, 'login_form'])->name('login.form');
Route::get('password', [UserController::class, 'password'])->name('password');
Route::post('password', [UserController::class, 'password_form'])->name('password.form');
Route::get('logout', [UserController::class, 'logout'])->name('logout');

Route::resource('admin/internalisasis', InternalisasiController::class);

Route::get('/admin', function () {
    return view('/admin/index', ['title' => 'Index']);
})->name('index');
Route::get('/admin/list', function () {
    return view('/admin/list', ['title' => 'List']);
})->name('index');
