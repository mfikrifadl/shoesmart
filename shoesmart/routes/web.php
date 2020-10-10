<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes(['register' => false, 'login' => false]);
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/admin/login', [App\Http\Controllers\Auth\LoginController::class, 'showLoginForm'])->name('login');
Route::post('/admin/login', [App\Http\Controllers\Auth\LoginController::class, 'login']);

Route::prefix('dashboard')->group(function () {
    Route::get('/', [App\Http\Controllers\Dashboard\DashboardController::class, 'index']);
    Route::name('produk')->group(function () {
        Route::get('/produk', [App\Http\Controllers\Dashboard\ProductController::class, 'index']);
        Route::get('/produk/add', [App\Http\Controllers\Dashboard\ProductController::class, 'addProductForm'])->name('.add.page');
        Route::post('/produk/category/add', [App\Http\Controllers\Dashboard\ProductController::class, 'addProduct'])->name('.add');
        Route::put('/produk/draft/{id}', [App\Http\Controllers\Dashboard\ProductController::class, 'draftProduct'])->name('.draft');
        Route::put('/produk/post/{id}', [App\Http\Controllers\Dashboard\ProductController::class, 'postProduct'])->name('.post');
        Route::delete('/produk/delete/{product}', [App\Http\Controllers\Dashboard\ProductController::class, 'deleteProduct'])->name('.delete');
        Route::get('/produk-draft', [App\Http\Controllers\Dashboard\ProductController::class, 'getDraftProduct'])->name('.draft.get');
    });
    Route::name('kategori')->group(function () {
        Route::get('/kategori', [App\Http\Controllers\Dashboard\CategoryController::class, 'index']);
        Route::post('/kategori', [App\Http\Controllers\Dashboard\CategoryController::class, 'addcategory'])->name('.add');
        Route::delete('/kategori/{category}', [App\Http\Controllers\Dashboard\CategoryController::class, 'destroyCategory'])->name('.destroy');
    });
});
