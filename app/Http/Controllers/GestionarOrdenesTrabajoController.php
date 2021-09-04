<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operadores;
use App\Models\Ordentrab;
use App\Models\Tipoorden;
use App\Imports\OrdenTrabImport;
use Excel;


class GestionarOrdenesTrabajoController extends Controller
{
    public function index(){
        $ordenes=\DB::select("select ord.*, op.nombre as nombre_operador, op.id_operador, tip.nombre as nombre_tipo, tip.id_tipo 
                            from ordentrabs ord inner join operadores op on(op.id_operador = ord.id_operador) 
                            inner join tipoordens tip on(tip.id_tipo = ord.id_tipo)");
    	$operadores=Operadores::all();
    	$tipos=Tipoorden::all();
    	return view('GestionOrdenes.Index',compact('ordenes','operadores','tipos'));
    }
    public function store(Request $request)
    {
        try{
            $tabla = new OrdenTrab;
            $tabla->id_tipo = $request->id_tipo;
            $tabla->fecha_creacion = $request->fecha_creacion;
            $tabla->fecha_asignacion = $request->fecha_asignacion;
            $tabla->fecha_ejecucion = $request->fecha_ejecucion;
            $tabla->id_operador = $request->id_operador;
            $tabla->resultado = $request->resultado;
            $tabla->valor = $request->valor;
            $tabla->save();
            return redirect('gestion-ordenes')->with('status','Se creó el registro exitosamente');
        }catch(\Exception $e){
            dd($e);
            \DB::rollBack();
            return redirect('gestion-ordenes')->with('warning','No se creo el registro erro: '.$e);
        }
    }

    public function update(Request $request){
        try{
            $tabla=OrdenTrab::find($request->id_orden);
            $tabla->id_tipo = $request->id_tipo;
            $tabla->fecha_asignacion = $request->fecha_asignacion;
            $tabla->fecha_ejecucion = $request->fecha_ejecucion;
            $tabla->id_operador = $request->id_operador;
            $tabla->resultado = $request->resultado;
            $tabla->valor = $request->valor;
            $tabla->save();
            return redirect('gestion-ordenes')->with('status','Se edito el registro exitosamente');
        }catch(\Exception $e){
            \DB::rollBack();
            return redirect('gestion-ordenes')->with('warning','No se edito el registro error: '.$e);
        }
    }
    public function cargar(Request $request){
        $archivo = $request->file('archivo_import');
        $archivo->move('uploads', $archivo->getClientOriginalName());
        Excel::import(new OrdenTrabImport, 'uploads/'.$archivo->getClientOriginalName());
        return redirect('gestion-ordenes')->with('status','Se crearon los registros exitosamente');
    }
    public function destroy(Request $request)
    {
        
        OrdenTrab::destroy($request->id_orden);
        return redirect('gestion-ordenes')->with('mensaje','Se borro el registro exitosamente');
    }
    public function OrdenesTable(){
        $ordenes=\DB::select("select ord.*, op.nombre as nombre_operador, op.id_operador, tip.nombre as nombre_tipo, tip.id_tipo from ordentrabs ord inner join operadores op on(op.id_operador = ord.id_operador) inner join tipoordens tip on(tip.id_tipo = ord.id_tipo)");
        return view('GestionOrdenes.TablaDatos',compact('ordenes'));
    }
}
