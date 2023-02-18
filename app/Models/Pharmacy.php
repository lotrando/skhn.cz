<?php

namespace App\Models;

use App\Models\Region;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Pharmacy
 *
 * @property int $id
 * @property string $region_id
 * @property string $code
 * @property string $name
 * @property string $address
 * @property string $number
 * @property-read \Illuminate\Database\Eloquent\Collection<int, Region> $region
 * @property-read int|null $region_count
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy query()
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereRegionId($value)
 * @property-read \Illuminate\Database\Eloquent\Collection<int, Region> $region
 * @property-read \Illuminate\Database\Eloquent\Collection<int, Region> $region
 * @mixin \Eloquent
 */
class Pharmacy extends Model
{
    use HasFactory;

    public $timestamps = false;

    public function region()
    {
        return $this->belongsTo(Region::class);
    }
}
