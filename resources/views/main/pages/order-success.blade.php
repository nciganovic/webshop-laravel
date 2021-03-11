@extends('layouts.layout-main')
@section('title') Order successful  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Order is successful</h1>
            <p>Your order will be deliveried is span of 3 to 5 days.</p>
            <p>Return to <a href="{{ route('home') }}">home page</a></p>
        </div>
    </div>
@endsection
