@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <div class="users">
                        @foreach ($users as $user )
                            <h1>{{ $user->name }}</h1>
                            <ul>

                                @forelse($user->addresses as $key => $address)
                                <li>{{ $address->country }}</li>
                                @empty
                                    <li></li>
                                @endforelse
                            </ul>
                            <hr>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
