<?php

namespace App\Models;

use App\Models\TaskOne;
use App\Models\UserOne;
use App\Models\ProjectoneUserone;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProjectOne extends Model
{
    use HasFactory;
    protected $fillable=[
        'title'
    ];

    // 07.#4.2 has-many-through relation using Pivot model _ Laravel Eloquent Relationships

    public function users()
    {
        return $this->belongsToMany(UserOne::class, 'projectone_userones', 'project_id', 'user_id')
        ->withTimestamps();
    }


    public function tasks()
    {
        return $this->hasManyThrough(
            TaskOne::class,
            ProjectoneUserone::class,
            'project_id',  // Foreign key on the projectone_userones  table...
            'user_id',  // Foreign key on the taskOne table...
            'id', // Local key on the project table...
            'id' // Local key on the user table...
        );

    }


}
