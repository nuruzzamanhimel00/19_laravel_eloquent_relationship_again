<?php

namespace App\Models;

use App\Models\Task;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'project_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function address(){
        return $this->hasOne(Address::class);
    }

    public function addresses(){
        return $this->hasMany(Address::class,'user_id','id');
    }
    // 02.#2 - One To Many relationship _ hasMany() _ Laravel Eloquent Relationships
    public function posts(){
        return $this->hasMany(Post::class,'user_id','id');
    }

     // 06.#4.1_ has-one-through & has-many-through Laravel Eloquent Relationships
    public function project(){
        return $this->belongsTo(Project::class,'project_id','id');
    }
    public function tasks(){
        return $this->hasMany(Task::class,'user_id','id');
    }

}
