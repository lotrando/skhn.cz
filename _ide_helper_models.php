<?php

// @formatter:off
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * App\Models\Pharmacy
 *
 * @property int $id
 * @property string $pharmacy_id
 * @property string $pharmacy_name
 * @property string $pharmacy_address
 * @property string $pharmacy_code
 * @property string $pharmacy_area
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Region> $region
 * @property-read int|null $region_count
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy query()
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy wherePharmacyAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy wherePharmacyArea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy wherePharmacyCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy wherePharmacyId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Pharmacy wherePharmacyName($value)
 */
	class Pharmacy extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Region
 *
 * @property int $id
 * @property string $region_csu
 * @property string $region_name
 * @property string $region_city
 * @property-read \App\Models\Pharmacy|null $pharmacy
 * @method static \Illuminate\Database\Eloquent\Builder|Region newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Region newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Region query()
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereRegionCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereRegionCsu($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Region whereRegionName($value)
 */
	class Region extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\User
 *
 * @property int $id
 * @property string $login_id
 * @property string $name
 * @property string $email
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property string $password
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Laravel\Sanctum\PersonalAccessToken> $tokens
 * @property-read int|null $tokens_count
 * @method static \Database\Factories\UserFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User query()
 * @method static \Illuminate\Database\Eloquent\Builder|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereLoginId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|User whereUpdatedAt($value)
 */
	class User extends \Eloquent {}
}

