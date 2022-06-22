<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
    ];

    // 08.#5.1 One to Many & One to One Polymorphic Relationships _ Laravel Eloquent Relationships
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }
    public function comment()
    {
        return $this->morphOne(Comment::class, 'commentable');
    }

    // 09.#5.2 Many to Many Polymorphic Relationship _ Laravel Eloquent Relationships

    public function marphToManyTags()
    {
        return $this->morphToMany(Tag::class, 'taggable','taggables');
    }
}
