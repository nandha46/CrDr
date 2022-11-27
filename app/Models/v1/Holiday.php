<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use App\Models\v1\View;

class Holiday extends Model{

    protected $table = 'orgholidays';
    
    protected $fillable =['orhlId ', 'orhlOrgMasterId', 'orhlHolMasterId', 'orhlFinancialYear', 'orhlName', 'orhlDescription', 'orhlDate','orhlMessage', 'orhlIsStatus', 'created_at', 'updated_at'];
   
    protected function getHolidayById($id = ''){
        
        if($id != ''){       

            $holiday = $this->where('orhlId',$id)->first();

            if($holiday) return $holiday;
        }
        return false;       
    }   
    
    
    protected function insertHoliday($orgId = '',$holid = '', $year = '', $hname = '', $description = '', $datee = '', $message = ''){
    
        $holiday = $this->create([
            'orhlOrgMasterId' =>  $orgId,
            'orhlHolMasterId' =>  $holid,
            'orhlFinancialYear' =>  $year,
            'orhlName'=> $hname,
            'orhlDescription' =>  $description,
            'orhlDate' =>  $datee,
            'orhlMessage' =>  $message,
            'orhlIsStatus' =>  1
        ]);
        return $holiday->id;
    }

    protected function updateHoliday($editId, $orgId = '',$holid = '', $year = '', $hname = '', $description = '', $datee = '', $message = ''){

        $upAray = [
            'orhlOrgMasterId' =>  $orgId,
            'orhlHolMasterId' =>  $holid,
            'orhlFinancialYear' =>  $year,
            'orhlName'=> $hname,
            'orhlDescription' =>  $description,
            'orhlDate' =>  $datee,
            'orhlMessage' =>  $message
        ];
        
        $this->where('orhlId', $editId)->update($upAray);
    }

    protected function updateStatus($id = ''){

       if($id != ''){

            $holiday = $this->where('orhlId',$id)->first();

            if($holiday){

                $status = 0;
                if($holiday->orhlIsStatus == 0) $status = 1;
                $this->where('orhlId',$id)->update(['orhlIsStatus' => $status]);
                return $status;
            }
        }
        return 'FALSE';
    }

    protected function getAllHolidays(){
        
        $holiday =  $this->all();
        
        if($holiday){
            return $holiday; 
        }
        return false; 
    }

    protected function getLessonsByStd($stdid){
        
        $lessons =   $this->where('lnClsMasterId', $stdid)->get();
        
        return $lessons;
    }

    protected function getLessonsBySyls($mediumid, $stdid, $subid, $syid){

        $lessons =   $this->where('lnMedMasterId', $mediumid)->where('lnClsMasterId', $stdid)
        ->where('lnSubMasterId', $subid)->where('lnSyMasterId', $syid)->get();
        
        return $lessons;
    }

    
}
