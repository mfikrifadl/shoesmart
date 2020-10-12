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
Route::get('/product', [App\Http\Controllers\ProductController::class, 'index'])->name('produk');
Route::get('/product/getFilter', [App\Http\Controllers\ProductController::class, 'getFilter']);
Route::get('/product/{slug}', [App\Http\Controllers\ProductController::class, 'productDetail'])->name('detail.produk');

Route::get('/admin/login', [App\Http\Controllers\Auth\LoginController::class, 'showLoginForm'])->name('login');
Route::post('/admin/login', [App\Http\Controllers\Auth\LoginController::class, 'login']);

Route::get('/cart/{ip}', [App\Http\Controllers\TransactionController::class, 'getCart'])->name('get.cart');
Route::get('/checkout/{ip}', [App\Http\Controllers\TransactionController::class, 'getCheckOut'])->name('get.checkout');
Route::get('/code-order', [App\Http\Controllers\TransactionController::class, 'codeOrderPage']);
Route::post('/checkout/add/{idCart}', [App\Http\Controllers\TransactionController::class, 'addTransaction'])->name('add.transaction');
Route::get('/invoice/{ip}', [App\Http\Controllers\TransactionController::class, 'getCheckOut'])->name('get.invoice');
Route::post('/product-add-cart', [App\Http\Controllers\TransactionController::class, 'addCart'])->name('add.cart');
Route::delete('/cart/deleteprod/{cart}', [App\Http\Controllers\TransactionController::class, 'delProdCart'])->name('del.prod.cart');


Route::prefix('dashboard')->group(function () {
    Route::get('/', [App\Http\Controllers\Dashboard\DashboardController::class, 'index']);
    Route::name('produk')->group(function () {
        Route::get('/produk', [App\Http\Controllers\Dashboard\ProductController::class, 'index']);
        Route::get('/produk/add', [App\Http\Controllers\Dashboard\ProductController::class, 'addProductForm'])->name('.add.page');
        Route::put('/produk/edit/{product}', [App\Http\Controllers\Dashboard\ProductController::class, 'editProduct'])->name('.edit');
        Route::get('/produk/edit/{id}', [App\Http\Controllers\Dashboard\ProductController::class, 'editProductForm'])->name('.edit.page');
        Route::post('/produk/category/add', [App\Http\Controllers\Dashboard\ProductController::class, 'addProduct'])->name('.add');
        Route::put('/produk/draft/{id}', [App\Http\Controllers\Dashboard\ProductController::class, 'draftProduct'])->name('.draft');
        Route::put('/produk/post/{id}', [App\Http\Controllers\Dashboard\ProductController::class, 'postProduct'])->name('.post');
        Route::delete('/produk/delete/{product}', [App\Http\Controllers\Dashboard\ProductController::class, 'deleteProduct'])->name('.delete');
        Route::delete('/produk/delete-img/{img}', [App\Http\Controllers\Dashboard\ProductController::class, 'deleteImgProduct'])->name('.delete.img');
        Route::get('/produk-draft', [App\Http\Controllers\Dashboard\ProductController::class, 'getDraftProduct'])->name('.draft.get');
    });
    Route::name('kategori')->group(function () {
        Route::get('/kategori', [App\Http\Controllers\Dashboard\CategoryController::class, 'index']);
        Route::post('/kategori', [App\Http\Controllers\Dashboard\CategoryController::class, 'addcategory'])->name('.add');
        Route::delete('/kategori/{category}', [App\Http\Controllers\Dashboard\CategoryController::class, 'destroyCategory'])->name('.destroy');
    });
    Route::name('transaksi')->group(function () {
        Route::get('/transaksi', [App\Http\Controllers\Dashboard\TransactionController::class, 'index']);
        Route::put('/transaksi/approve/{trans}', [App\Http\Controllers\Dashboard\TransactionController::class, 'approveTrans'])->name('.approve');
        Route::put('/transaksi/resi/{trans}', [App\Http\Controllers\Dashboard\TransactionController::class, 'addResiTrans'])->name('.resi');
        Route::put('/transaksi/unapprove/{trans}', [App\Http\Controllers\Dashboard\TransactionController::class, 'unApproveTrans'])->name('.unapprove');
        Route::put('/transaksi/eject/{trans}', [App\Http\Controllers\Dashboard\TransactionController::class, 'ejectTrans'])->name('.eject');
    });
});
