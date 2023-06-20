<?php

namespace App\Models\v1;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    protected $table = 'companies';

    protected $fillable = [];

    public function getFromDateAttribute($date){
        return Carbon::parse($date)->format('d-m-Y');
    }
    
    public function getToDateAttribute($date){
        return Carbon::parse($date)->format('d-m-Y');
    }

    protected function getUsersCompanies ($uid) {
        return Company::where('userid', $uid)->get();
    }

    protected function checkFileUploaded ($fileHash) {
       return Company::where('filehash', $fileHash)->exists();
    }
}
