@extends('layouts.layout-main')
@section('title') Category  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Category name</h1>
            <p class="text-center">Categoy description</p>
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <h2 class="text-center">Filters</h2>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                <label class="form-check-label" for="exampleRadios1">
                    Default radio
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                <label class="form-check-label" for="exampleRadios2">
                    Second default radio
                </label>
            </div>
            <div class="form-check disabled">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" disabled>
                <label class="form-check-label" for="exampleRadios3">
                    Disabled radio
                </label>
            </div>
            <div class="form-check disabled">
                <input class="form-input" type="text">
                <button type="button" class="btn btn-info">Search</button>
            </div>
        </div>
        <div class="col-9">
            <div class="row d-flex justify-content-start">
                @for($i = 0; $i < 20; $i++)
                    @include('main.partial.product-card')
                @endfor
            </div>
        </div>
    </div>
@endsection
