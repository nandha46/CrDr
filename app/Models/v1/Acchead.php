<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Acchead extends Model
{
    use HasFactory;

    protected $table = 'acchead';

    protected $fillable = [];

    public function daybooks () {
        return $this->hasMany(Daybook::class, 'acccode', 'id');
    }

    
}
