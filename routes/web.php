<?php

use App\Models\Tag;
use App\Models\Post;
use App\Models\User;
use App\Models\Address;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// #### 01.#1 - One to One relationship _ hasOne() & belongsTo() _ Laravel Eloquent Relationships
Route::get('/users-address', function () {
    $users = User::with(['address'])->latest()->get();
    return view('users',compact('users'));
    // return $users;
});
Route::get('/address-user', function () {
     $addresses = Address::with(['user'])->latest()->get();
    //  dd($addresses->first()->user);
    return view('address_user',compact('addresses'));
    // return $users;
});

// 02.#2 - One To Many relationship _ hasMany() _ Laravel Eloquent Relationships
Route::get('/tut_2', function () {
    $users = User::with(['addresses'])->latest()->get();
    return view('tut_2',compact('users'));
    // return $users;
});

Route::get('/tut_2_post_user', function () {
    $posts = Post::with(['user'])->latest()->get();

    $users = User::with(['posts'])->latest()->get();

    return view('posts.index',compact('posts','users'));
    // return $users;
});

// 03.#3.1_ Many To Many relationship _ belongsToMany() _ Laravel Eloquent Relationships
Route::get('/tut_3_post_tag_create', function () {
    // rule: 01
    // $post = Post::inRandomOrder()->first();
    // $tags = Tag::inRandomOrder()->take(2)->get();
    // $post->tags()->attach($tags);

    // rule : 02
    $post = Post::find(36);
    // // oi post er ager tag delete korbe then post er under y tag set korbe
    // $post->tags()->detach();
    // $post->tags()->attach([1,2]);

    // // sync ager post data delete korbe and notun post er under y tag set korbe
    // $post->tags()->sync([1,2]);

    // ***additional column attach into pivot table.................
    $tags = Tag::inRandomOrder()->take(2)->get();
    // $post->tags()->attach($tags,['status'=>'executed']);
    $post->tags()->sync([1,2],['status'=>'executed']);

    return "Post tag pivot create successfully";
    // return $users;
});

Route::get('/tut_3_tag_post_create', function () {
    $tag = Tag::inRandomOrder()->first();
    $posts = Post::inRandomOrder()->take(2)->get();
    $tag->posts()->attach($posts);
    // $post->tags()->sync($tags);
    return "Post tag pivot create successfully";
    // return $users;
});

Route::get('/tut_3_post_tag_delete', function () {
    $post = Post::find(36);
    $tag = Tag::find(12);
    $post->tags()->detach($tag);
    return "Post tag pivot deleted successfully";
});
// display post tags
Route::get('/tut_3_post_tag_display', function () {
    return $posts = Post::with(['tags'])->latest()->get();
    // return $posts->where('id',36)->first()->tags->first()->pivot->created_at;
    $tags = Tag::with(['posts'])->latest()->get();
    return view("posts.many_to_many",compact('posts','tags'));
});

