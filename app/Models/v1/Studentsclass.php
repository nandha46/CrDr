<?php

namespace App\Models\v1;

use Barryvdh\Debugbar\Facades\Debugbar;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Studentsclass extends Model{

    protected $table = 'studentsclasses';
    
    protected $fillable = ['stuclId ', 'stuclOrgStuMasterId', 'stuclClsMasterId', 'stuclSecMasterId', 'stuclAcademicYear','promoted','transferred', 'stuclIsStatus',  'created_at', 'updated_at'];
    
    protected function insertStudentClass($organization = '', $standard = '',  $section = '',  $academicYear = ''){

        $StuClass =   $this->create([
            'stuclOrgStuMasterId' => $organization,
            'stuclClsMasterId' => $standard,
            'stuclSecMasterId' => $section,
            'stuclAcademicYear' => $academicYear
        ]);
        
        return $StuClass->id;
    }

    protected function updateStudentClass($organization, $standard = '',  $section = '',  $academicYear = ''){

        $upAray = [
            'stuclClsMasterId' => $standard,
            'stuclSecMasterId' => $section,
            'stuclAcademicYear' => $academicYear
        ];

        $this->where('stuclOrgStuMasterId', $organization)->update($upAray);
        return $organization;
    }

    protected function getStudentClassesByOrgStuId($orgstuId){
       
        return $this->where('stuclOrgStuMasterId', $orgstuId)->first();
    
    }

    protected function promoteStudents($passed, $currentAcademicYear, $class){
        $data = [
            'stuclAcademicYear' => $currentAcademicYear,
            'stuclClsMasterId' => $class,
        ];
        $promotion_list = $this->whereIn('stuclOrgStuMasterId', $passed)->get();
        
        $promotion_list->each(function ($student) use($data) {
            $newstu = $student->replicate(['stuclId'])->fill($data)->save();
            return $newstu;
        });

        Debugbar::info($promotion_list);
        
        $count = $this->whereIn('stuclOrgStuMasterId', $passed)->update(['promoted' => 1]);
        return $count;
    }

    protected function failStudents($failed, $currentAcademicYear){
        $fail_list = $this->whereIn('stuclOrgStuMasterId', $failed)->get();
        $fail_list->each(function($student) use($currentAcademicYear){
            $newstu = $student->replicate(['stuclId'])->fill(['stuclAcademicYear', $currentAcademicYear])->save();
            return $newstu;
        });

        Debugbar::info($fail_list);

        $count = $this->whereIn('stuclOrgStuMasterId', $failed)->update(['promoted' => 1]);
        return $count;
    }

    protected function transferStudents($transferred){
        $count = $this->whereIn('stuclOrgStuMasterId', $transferred)->update(['promoted' => 1, 'transferred' => 1]);
        return $count;
    }

}