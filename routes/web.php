<?php

use App\Http\Controllers\PharmacyController;
use App\Models\Pharmacy;
use App\Models\Region;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $regions = Region::with('pharmacy')->get();
    $pharmacies = Pharmacy::with('region')->get();

    // return $regions;

    return view('index', ['regions' => $regions, 'pharmacies' => $pharmacies]);
})->name('index');

Route::resource('pharmacy', PharmacyController::class);
