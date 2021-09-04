<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tipoorden;

class GestionarTipoOrdenController extends Controller
{
    public function index(){
        $tipos = Tipoorden::all();
        return view('GestionTipoOrdenes.Index')->with("tipos", $tipos);
    }
    public function store(Request $request)
    {
        try{
            $tabla = new Tipoorden;
            $tabla->id_tipo = $request->id_tipo;
            $tabla->nombre = strtoupper($request->nombre);
            $tabla->save();
            return redirect('gestion-tipo')->with('status','Se creo el registro exitosamente');
        }catch(\Exception $e){
            \DB::rollBack();
            return redirect('gestion-tipo')->with('warning','No se creo el registro erro: '.$e);
        }
    }

    public function update(Request $request){
        try{
            $tabla=Tipoorden::find($request->id_tipo);
        	$tabla->nombre = strtoupper($request->nombre);
            $tabla->save();
            return redirect('gestion-tipo')->with('status','Se edito el registro exitosamente');
        }catch(\Exception $e){
            \DB::rollBack();
            return redirect('gestion-tipo')->with('warning','No se edito el registro error: '.$e);
        }
    }
    public function destroy(Request $request)
    {
        Tipoorden::destroy($request->id_tipo );
        return redirect('gestion-tipo')->with('mensaje','Operador Borrado');
    }
}
