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
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Shop</th>
                                    <th>Country name</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($shops as $shop )
                                    <tr>
                                        <td> {{ $shop->name }}</td>
                                        <td> {{ $shop->city->country->name }} </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
