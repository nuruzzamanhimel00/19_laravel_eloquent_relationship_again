@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <div class="users">
                        @foreach ($addresses as $address )
                            <h1>Country:{{ $address->country }}</h1>
                            <p>user name:{{ $address->user->name }}</p>
                            <hr>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
