<?php

namespace App\Models\v1;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model{

    protected function getMenus() {

        $menus = $this->orderBy('mainid','DESC')->orderBy('position', 'ASC')->get();

        if(count($menus) == 0) return false;
        return $menus;
    }

    protected function getPrivilegedMenus($userId = ''){

        return View::getPrivilegedMenus($userId);
    }

}