<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Historia extends Model
{
    use HasFactory;
    protected $fillable = [
        'historia',
    ];

public function sede(){
    return $this->belongsTo(Sede::class, 'sede_id');
}
}
