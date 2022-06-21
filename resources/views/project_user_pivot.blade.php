@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 my-5">
            <div class="card">
                <div class="card-title">
                    <h1>users:---</h1>
                </div>
                <div class="card-body">
                    <div class="users">
                        @foreach ($users as $user )
                            <h1>user title: {{ $user->name }}</h1>
                            @forelse($user->projects as $project )
                                <p>Project title: {{$project->title }}</p>
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
                    <h1>Project:---</h1>
                </div>
                <div class="card-body">
                    <div class="users">
                        @foreach ($projects as $project )
                            <h1>project title: {{ $project->title }}</h1>
                            @forelse($project->users as $user )
                                <p>user title: {{$user->name }}</p>
                            @empty

                            @endforelse
                            ------------------------
                            @forelse($project->tasks as $task )
                                <p>Task Title title: {{$task->title }}</p>
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
