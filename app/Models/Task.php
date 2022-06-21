<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $fillable=[
        'user_id',
        'title'
    ];

     // 06.#4.1_ has-one-through & has-many-through Laravel Eloquent Relationships
    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }
}
