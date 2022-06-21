<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;

    protected $fillable=[
        'name'
    ];

    // 03.#3.1_ Many To Many relationship _ belongsToMany() _ Laravel Eloquent Relationships

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'post_tag', 'tag_id','post_id')
        ->withTimestamps();
    }
}
