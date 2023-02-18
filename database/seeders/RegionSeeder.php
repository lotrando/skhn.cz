<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('regions')->insert([
            'region_csu'  => "PHA",
            'region_name' => "Hlavní město Praha",
            'region_city' => "Praha ",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "STČ",
            'region_name' => "Středočeský kraj",
            'region_city' => "Praha ",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "JHČ",
            'region_name' => "Jihočeský kraj",
            'region_city' => "České Budějovice",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "PLK",
            'region_name' => "Plzeňský kraj",
            'region_city' => "Plzeň",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "KVK",
            'region_name' => "Karlovarský kraj",
            'region_city' => "Karlovy Vary",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "ULK",
            'region_name' => "Ústecký kraj",
            'region_city' => "Ústí nad Labem",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "LBK",
            'region_name' => "Liberecký kraj",
            'region_city' => "Liberec",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "HKK",
            'region_name' => "Královéhradecký kraj",
            'region_city' => "Hradec Králové",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "PAK",
            'region_name' => "Pardubický kraj",
            'region_city' => "Pardubice",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "VYS",
            'region_name' => "Kraj Vysočina",
            'region_city' => "Jihlava",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "JHM",
            'region_name' => "Jihomoravský kraj",
            'region_city' => "Brno",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "OLK",
            'region_name' => "Olomoucký kraj",
            'region_city' => "Olomouc",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "MSK",
            'region_name' => "Moravskoslezský kraj",
            'region_city' => "Ostrava",
        ]);

        DB::table('regions')->insert([
            'region_csu'  => "ZLK",
            'region_name' => "Zlínský kraj",
            'region_city' => "Zlín",
        ]);
    }
}
