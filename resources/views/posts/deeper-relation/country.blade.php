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
                                    <th>Country</th>
                                    <th>Shop</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($countries as $country )
                                    <tr>
                                        <td> {{ $country->name }}</td>
                                        <td> {{ $country->shops->count() }} </td>
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
