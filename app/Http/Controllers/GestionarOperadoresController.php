<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operadores;

class GestionarOperadoresController extends Controller
{
    public function index(){
        $operadores = Operadores::all();
        return view('GestionOperadores.Index')->with("operadores", $operadores);
    }
    public function store(Request $request)
    {
        try{
            $tabla = new Operadores;
            $tabla->id_operador = $request->id_operador;
            $tabla->nombre = strtoupper($request->nombre);
            $tabla->save();
            return redirect('gestion-operadores')->with('status','Se creo el registro exitosamente');
        }catch(\Exception $e){
            \DB::rollBack();
            return redirect('gestion-operadores')->with('warning','No se creo el registro erro: '.$e);
        }
    }

    public function update(Request $request){
        try{
            $tabla=Operadores::find($request->id_operador);
        	$tabla->nombre = strtoupper($request->nombre);
            $tabla->save();
            return redirect('gestion-operadores')->with('status','Se edito el registro exitosamente');
        }catch(\Exception $e){
            \DB::rollBack();
            return redirect('gestion-operadores')->with('warning','No se edito el registro error: '.$e);
        }
    }
    public function destroy(Request $request)
    {
        Operadores::destroy($request->id_operador);
        return redirect('gestion-operadores')->with('mensaje','Operador Borrado');
    }
}
