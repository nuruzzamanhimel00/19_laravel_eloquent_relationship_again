@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 my-5">
            <div class="card">
                <div class="card-title">
                    <h1>POST COMMENT:---</h1>
                </div>
                <div class="card-body">
                    <div class="users">
                        @foreach ($posts as $post )
                            <h1>post title: {{ $post->title }}</h1>
                            @forelse($post->comments as $comment )
                                <p>comment title: {{$comment->body }}</p>
                            @empty

                            @endforelse
                            <hr>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 my-5">
            <div class="card">
                <div class="card-title">
                    <h1>VIDEO COMMENT:---</h1>
                </div>
                <div class="card-body">
                    <div class="users">
                        @foreach ($videos as $video )
                            <h1>video title: {{ $video->title }}</h1>
                            @forelse($video->comments as $comment )
                                <p>comment title: {{$comment->body }}</p>
                            @empty

                            @endforelse
                            <hr>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
