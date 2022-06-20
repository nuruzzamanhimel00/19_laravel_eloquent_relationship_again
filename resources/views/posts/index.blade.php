@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 my-5">
            <div class="card">
                <div class="card-title">
                    <h1>Post:---</h1>
                </div>
                <div class="card-body">
                    <div class="users">
                        @foreach ($posts as $post )
                            <h1>Post title: {{ $post->title }}</h1>
                            <p>Post User name: {{ optional($post->user)->name }}</p>
                            <hr>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 my-5">
            <div class="card">
                <div class="card-title">
                    <h1>Users:---</h1>
                </div>
                <div class="card-body">
                    <div class="users">
                        @foreach ($users as $user )
                            <h1>User name: {{ $user->name }}</h1>
                            {{-- <p>Post User name: {{ optional($post->user)->name }}</p> --}}
                            <ol>
                                @foreach ($user->posts as $post)
                                    <li>user post title: {{ $post->title }}</li>
                                @endforeach
                            </ol>
                            <hr>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
