<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Operadores;
use App\Http\Controllers\GestionarOperadoresController;
use App\Http\Controllers\GestionarTipoOrdenController;
use App\Http\Controllers\GestionarOrdenesTrabajoController;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->group(function (){
    Route::get('gestion-operadores',[GestionarOperadoresController::class, 'index'])->name('gestion-operadores');
    Route::post('gestion-operadores',[GestionarOperadoresController::class, 'store'])->name('gestion-operadores');
    Route::post('operadores-editar',[GestionarOperadoresController::class, 'update']);
    Route::post('operadores-eliminar',[GestionarOperadoresController::class, 'destroy']);
    Route::get('gestion-tipo',[GestionarTipoOrdenController::class, 'index'])->name('gestion-tipo');
    Route::post('gestion-tipo',[GestionarTipoOrdenController::class, 'store'])->name('gestion-tipo');
    Route::post('tipo-editar',[GestionarTipoOrdenController::class, 'update']);
    Route::post('tipo-eliminar',[GestionarTipoOrdenController::class, 'destroy']);
    Route::get('gestion-ordenes',[GestionarOrdenesTrabajoController::class, 'index'])->name('gestion-ordenes');
    Route::post('gestion-ordenes',[GestionarOrdenesTrabajoController::class, 'store'])->name('gestion-ordenes');
    Route::post('orden-editar',[GestionarOrdenesTrabajoController::class, 'update']);
    Route::post('orden-cargar',[GestionarOrdenesTrabajoController::class, 'cargar']);
    Route::post('orden-eliminar',[GestionarOrdenesTrabajoController::class, 'destroy']);
    Route::get('ordenes-tabla',[GestionarOrdenesTrabajoController::class, 'OrdenesTable'])->name('ordenes-tabla');;
    
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

});
