@extends('layouts.layout-main')
@section('title') Product  @endsection
@section('meta')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
@section('content')
    <div class="row mt-3 d-flex justify-content-center">
        <div class="col-6">
            <div class="card">
                <img
                    src="{{ $product->image }}"
                    class="card-img-top"
                    alt="{{ $product->name }}"
                />
                <div class="card-body">
                    <h5 class="card-title">{{ $product->name }}</h5>
                    <p class="card-text">
                        {{ $product->description }}
                    </p>
                    <div href="#!" class="btn btn-primary">
                        @if($product->sale != 0)
                            <s>{{ $product->price }}$</s>
                        @else
                            {{ $product->price }}$
                        @endif
                    </div>
                    @if($product->sale != 0)
                        <div class="btn btn-primary">{{ $product->price - (($product->price / 100) * $product->sale) }}$</div>
                        <div class="btn btn-primary">{{ $product->sale }}%</div>
                    @endif
                    <button data-product-id="{{ $product->id }}" id="add-cart-btn" type="button" class="btn btn-warning" @if(!$auth) onclick="alert('You need to be logged in in order to add items to cart.')" @endif >Add to Cart</button>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{ asset('assets/js/cart.js') }}"></script>
@endsection
