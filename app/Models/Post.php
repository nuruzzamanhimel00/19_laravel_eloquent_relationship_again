<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'title',
    ];


    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id')
        ->withDefault([
            'name' => 'Guest Author',
        ]);
    }

    // 03.#3.1_ Many To Many relationship _ belongsToMany() _ Laravel Eloquent Relationships


    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'post_tag', 'post_id', 'tag_id')
        ->withTimestamps()
        ->withPivot('status');
    }

}
