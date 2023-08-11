<?php

namespace Database\Seeders;

use App\Models\v1\Menu;
use Illuminate\Database\Seeder;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Menu::insert([
            ['id' => 1, 'menuname' => 'dashboard', 'isdirlink' => 0, 'icons' => 'home', 'position' => 1, 'ismain' => 1, 'menuurls' => null, 'mainid' => 0, ],
            ['id' => 2, 'menuname' => 'members', 'isdirlink' => 0, 'icons' => 'users', 'position' => 2, 'ismain' => 1, 'menuurls' => null, 'mainid' => 0, ],
            ['id' => 3, 'menuname' => 'reports', 'isdirlink' => 0, 'icons' => 'layers', 'position' => 4, 'ismain' => 1, 'menuurls' => null, 'mainid' => 0, ],
            ['id' => 5, 'menuname' => 'Companies', 'isdirlink' => 0, 'icons' => 'users', 'position' => 3, 'ismain' => 1, 'menuurls' => null, 'mainid' => 0, ],
            ['id' => 6, 'menuname' => 'analytics', 'isdirlink' => 0, 'icons' => null, 'position' => 1, 'ismain' => 0, 'menuurls' => 'reports-analytics', 'mainid' => 1, ],
            ['id' => 7, 'menuname' => 'users', 'isdirlink' => 0, 'icons' => null, 'position' => 3, 'ismain' => 0, 'menuurls' => 'users', 'mainid' => 2, ],
            ['id' => 10, 'menuname' => 'Daybooks', 'isdirlink' => 0, 'icons' => null, 'position' => 1, 'ismain' => 0, 'menuurls' => 'daybooks', 'mainid' => 3, ],
            ['id' => 11, 'menuname' => 'Ledger', 'isdirlink' => 0, 'icons' => null, 'position' => 2, 'ismain' => 0, 'menuurls' => 'ledger', 'mainid' => 3, ],
            ['id' => 12, 'menuname' => 'Trial Balance', 'isdirlink' => 0, 'icons' => null, 'position' => 3, 'ismain' => 0, 'menuurls' => 'trial-balance', 'mainid' => 3, ],
            ['id' => 13, 'menuname' => 'Trading - Profit & Loss', 'isdirlink' => 0, 'icons' => null, 'position' => 4, 'ismain' => 0, 'menuurls' => 'trading-pnl', 'mainid' => 3, ],
            ['id' => 14, 'menuname' => 'Balance Sheet', 'isdirlink' => 0, 'icons' => null, 'position' => 5, 'ismain' => 0, 'menuurls' => 'balance-sheet', 'mainid' => 3, ],
            ['id' => 15, 'menuname' => 'All Companies', 'isdirlink' => 0, 'icons' => null, 'position' => 1, 'ismain' => 0, 'menuurls' => 'list-company', 'mainid' => 5, ],
            ['id' => 16, 'menuname' => 'Upload Company', 'isdirlink' => 0, 'icons' => null, 'position' => 2, 'ismain' => 0, 'menuurls' => 'upload-company', 'mainid' => 5, ],
        ]);
    }
}