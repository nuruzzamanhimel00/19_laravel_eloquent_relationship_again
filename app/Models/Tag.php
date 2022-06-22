<?php

namespace App\Models;

use App\Models\Video;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

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

// 09.#5.2 Many to Many Polymorphic Relationship _ Laravel Eloquent Relationships

    public function morphedByManyposts()
    {
        return $this->morphedByMany(Post::class, 'taggable','taggables');
    }

    public function morphedByManyvideos()
    {
        return $this->morphedByMany(Video::class, 'taggable','taggables');
    }
}
