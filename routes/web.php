<?php

use App\Http\Controllers\ClienteController;
use Illuminate\Support\Facades\Route;

Route::get('/', [ClienteController::class, 'index'])->name('client.index');
Route::get('cliente', [ClienteController::class, 'create'])->name('client.index');
Route::get('editar/{customer?}', [ClienteController::class, 'edit'])->name('client.index');
