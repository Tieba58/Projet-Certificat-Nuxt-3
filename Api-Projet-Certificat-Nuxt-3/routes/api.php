<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


// Routes protégées
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', [UserController::class, 'me']);

    Route::apiResource('users', UserController::class)->except(['store']); // pour admin
    Route::apiResource('orders', OrderController::class);
    Route::post('/logout', [UserController::class, 'logout']);
});

Route::post('/auth/register', [UserController::class, 'register']);
Route::post('/auth/login', [UserController::class, 'login']);

// Public
Route::apiResource('products', ProductController::class);
Route::apiResource('categories', CategoryController::class);

// Route::get('/orders', [OrderController::class, 'index']);
Route::get('/categories/products/{slug}', [CategoryController::class, 'indexCategory']);
Route::get('/products/detail/{slug}', [ProductController::class, 'showproduct']);
