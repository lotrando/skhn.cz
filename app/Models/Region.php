<?php

namespace App\Models;

use App\Models\Pharmacy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Region
 *
 * @property int $id
 * @property string $region_csu
 * @property string $region_name
 * @property string $region_city
 * @property-read Pharmacy|null $pharmacy
 * @method static \Illuminate\Database\Eloquent\Builder|Region newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Region newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Region query()
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereRegionCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereRegionCsu($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereRegionName($value)
 * @mixin \Eloquent
 */
class Region extends Model
{
    use HasFactory;

    public $timestamps = false;

    public function pharmacy()
    {
        return $this->hasMany(Pharmacy::class);
    }
}
