<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Orgclassstaff extends Model{

    protected $table = 'orgclassstaffs';
    
    protected $fillable = ['ogcstffId', 'ogcstffClsMasterId', 'ogcstffStaffMasterId', 'ogcstffSubjectId', 'ogcstffIsStatus', 'created_at', 'updated_at'];

    protected function insertOrgClassStaff($orgStaff = '', $assignedClass = '', $assignedSubjects = ''){

        $OrgStu =   $this->create([
            'ogcstffStaffMasterId' => $orgStaff,
            'ogcstffClsMasterId' => $assignedClass,
            'ogcstffSubjectId' => $assignedSubjects
        ]);
        $OrgStu->id;
    }

    protected function updateOrgClassStaff($orgStaff = '', $assignedClass = '', $assignedSubjects = ''){

        $OrgStu =   $this->where('ogcstffStaffMasterId', $orgStaff)->update([
            'ogcstffClsMasterId' => $assignedClass,
            'ogcstffSubjectId' => $assignedSubjects
        ]);
        return $orgStaff;
    }

}