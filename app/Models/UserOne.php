<?php

namespace App\Models;

use App\Models\ProjectOne;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UserOne extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    // 07.#4.2 has-many-through relation using Pivot model _ Laravel Eloquent Relationships

    public function projects()
    {
        return $this->belongsToMany(
            ProjectOne::class,
            'projectone_userones',
            'user_id',
            'project_id',
        )->withTimestamps();
    }

}
