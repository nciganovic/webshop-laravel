<?php

use Illuminate\Support\Facades\Route;

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

use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\ContactUsController;
use App\Http\Controllers\AdminController;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/category/{category_slug}', [CategoryController::class, 'index'])->name('category');
Route::get('/product/{product_slug}', [ProductController::class, 'index'])->name('product');
Route::get('/cart', [CartController::class, 'index'])->name('cart');
Route::get('/order', [OrderController::class, 'index'])->name('cart');
Route::get('/register', [AccountController::class, 'register_get'])->name('register_get');
Route::post('/register', [AccountController::class, 'register_post'])->name('register_post');
Route::get('/login', [AccountController::class, 'login_get'])->name('login_get');
Route::post('/login', [AccountController::class, 'login_post'])->name('login_post');
Route::get('/logout', [AccountController::class, 'logout'])->name('logout');
Route::post('/cart/add', [CartController::class, 'add'])->name('cart_add');
Route::post('/cart/remove', [CartController::class, 'remove'])->name('cart_remove');
Route::get('/cart/display', [CartController::class, 'display'])->name('cart_display');
Route::post('/cart/update/count', [CartController::class, 'update_count'])->name('cart_update_count');
Route::get('/order',[OrderController::class, 'order_get'])->name('order_get');
Route::post('/order', [OrderController::class, 'order_post'])->name('order_post');
Route::get('/contactus', [ContactUsController::class, 'index'])->name('contact_us');
Route::post('/contactus', [ContactUsController::class, 'send_email'])->name('send_email');
Route::get('/admin', [AdminController::class, 'index'])->name('admin_index');
Route::get('/admin/products', [AdminController::class, 'products_show'])->name('products_show');
