<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\operadores as AppOperadores;
class Operadores extends Component
{
    public $nombre, $id_operador, $operador;
    public $modal=false;
    public function mount()
    {
        $this->operadores = AppOperadores::paginate(25);
    }
    public function render()
    {
        return view('livewire.operadores', [
            'operadores' => AppOperadores::paginate(25)
        ]);
    }
    public function crear(){
        $this->limpiarCampos();
        $this->abrirModal();
    }
    public function abrirModal(){
        $this->modal = true;
    }
    public function cerrarModal(){
        $this->modal = false;
    }
    public function limpiarCampos(){
        $this->nombre = '';
        $this->id_operador = '';
    }
    public function editar($id)
    {
        $producto = AppOperadores::findOrFail($id_operador);
        $this->id_operador = $id_operador;
        $this->nombre = $operador->nombre;
        $this->abrirModal();
    }

    public function borrar($id_operador)
    {
        AppOperadores::find($id_operador)->delete();
        session()->flash('message', 'Registro eliminado correctamente');
    }

    public function guardar()
    {
        AppOperadores::updateOrCreate(['id_operador'=>$this->id_operador],
            [
                'nombre' => $this->nombre
            ]);
         
         session()->flash('message',
            $this->id_operador ? '¡Actualización exitosa!' : '¡Alta Exitosa!');
         
         $this->cerrarModal();
         $this->limpiarCampos();
    }
}
