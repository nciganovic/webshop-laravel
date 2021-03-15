@extends('layouts.layout-main')
@section('title') Category  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">{{ $category->name }}</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <form method="GET">
                <div class="form-check disabled">
                    <form method="GET" action="{{ route('category', ['category_slug' => $category->slug]) }}">
                        <input name="search" class="form-input" type="text">
                        <button type="submit" class="btn btn-info">Search</button>
                    </form>
                </div>
            </form>
        </div>
        <div class="col-12">
            <div class="row d-flex justify-content-start">
                @foreach($products as $product)
                    @include('main.partial.product-card')
                @endforeach
            </div>
        </div>
        <div class="col-3">

        </div>
        <div class="col-9 d-flex justify-content-center">
            {{ $products->links() }}
        </div>
    </div>
@endsection
