<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tipoorden extends Model
{
    use HasFactory;
    protected $fillable =
        [
            'id_tipo',
            'nombre',
        ];
    protected $table = 'tipoordens';
    protected $primaryKey = 'id_tipo';
    public $timestamps = false;
    protected $guarded = [];
}
