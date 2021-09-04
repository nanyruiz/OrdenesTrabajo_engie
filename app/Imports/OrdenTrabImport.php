<?php

namespace App\Imports;

use App\Models\OrdenTrab;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class OrdenTrabImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row){
        return new OrdenTrab([
           
            'fecha_creacion' => date('Y-m-d H:i:s', strtotime($row['fecha_creacion'])),
            'fecha_asignacion' => date("Y-m-d", strtotime($row['fecha_asignacion'])),
            'fecha_ejecucion' => date("Y-m-d", strtotime($row['fecha_ejecucion'])),
            'id_tipo' => number_format($row['id_tipo']),
            'id_operador' => $row['id_operador'],
            'resultado' => $row['resultado'],
            'valor' => $row['valor'],
        ]);
    }
}
