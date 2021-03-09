@extends('layouts.layout-main')
@section('title') Shop  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Welcome to shop</h1>
            <p class="text-center">Our most recent products</p>
        </div>
    </div>
    <div class="row d-flex justify-content-start">
        @for($i = 0; $i < 20; $i++)
            @include('main.partial.product-card')
        @endfor
    </div>
@endsection
