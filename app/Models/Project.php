<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable=[
        'title'
    ];

    // 06.#4.1_ has-one-through & has-many-through Laravel Eloquent Relationships

    public function users()
    {
        return $this->hasMany(User::class, 'project_id', 'id');
    }

    // 06.#4.1_ has-one-through & has-many-through Laravel Eloquent Relationships
    public function tasks()
    {
        return $this->hasManyThrough(
            Task::class,
            User::class,
            'project_id',  // Foreign key on the user table...
            'user_id',  // Foreign key on the task table...
            'id', // Local key on the project table...
            'id' // Local key on the user table...
        );

    }
    // 06.#4.1_ has-one-through & has-many-through Laravel Eloquent Relationships
    public function task()
    {
        return $this->hasOneThrough(
            Task::class,
            User::class,
            'project_id',  // Foreign key on the user table...
            'user_id',  // Foreign key on the task table...
            'id', // Local key on the project table...
            'id' // Local key on the user table...
        );

    }



}
