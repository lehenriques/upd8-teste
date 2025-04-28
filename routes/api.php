<?php

use App\Http\Controllers\Api\CustomerController;
use App\Models\Representative;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::get("customers", [CustomerController::class, 'index']);
Route::post("customer/create", [CustomerController::class, 'store']);
Route::put("customer/{customer}/update", [CustomerController::class, 'update']);
Route::delete("customer/{customer}/delete", [CustomerController::class, 'destroy']);
Route::get("customer/{customer}/representatives", [CustomerController::class, 'representatives']);
Route::get("representatives/{city_id}", function (Request $request) {
    $repres = Representative::with('city')->whereCityId($request->city_id)->get();
    dd($repres, $request->city_id);
});