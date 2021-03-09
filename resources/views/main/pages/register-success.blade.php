@extends('layouts.layout-main')
@section('title') Shop  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Successful registration</h1>
            <p>Go to <a href="{{ route('login_get') }}">login page</a> to start using app.</p>
        </div>
    </div>
@endsection
