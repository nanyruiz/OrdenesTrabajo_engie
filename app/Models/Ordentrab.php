<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ordentrab extends Model
{
    use HasFactory;
    protected $fillable =
    [
        'id_orden',
        'fecha_creacion',
        'fecha_asignacion',
        'fecha_ejecucion',
        'id_tipo',
        'id_operador',
        'resultado',
        'valor',
    ];
    protected $table = 'ordentrabs';
    protected $primaryKey = 'id_orden';
    public $timestamps = false;
    protected $guarded = [];
}
