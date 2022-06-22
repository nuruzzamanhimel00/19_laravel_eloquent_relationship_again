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
        return $this->morphToMany(Tag::class,
        'taggable', // identifier
        'taggables' // intermidate table name
        );
    }

}
