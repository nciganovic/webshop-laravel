@extends('layouts.layout-main')
@section('title') Cart  @endsection
@section('meta')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
@section('content')
    <div class="row mt-3 d-flex justify-content-center">
        <div class="col-12">
            <h1 class="text-center">Cart</h1>
        </div>
        <div class="col-12">
            @if(isset($products))
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Product name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Count</th>
                    <th scope="col">Total</th>
                    <th scope="col">Remove</th>
                </tr>
                </thead>
                <tbody>

                @for($i = 0; $i < count($products); $i++)
                    <tr id="table-row-{{ $products[$i]->id }}">
                        <td>{{ $products[$i]->name }}</td>
                            @if($products[$i]->sale != 0)
                                <td id="price-{{ $i + 1 }}">{{ $products[$i]->price - (($products[$i]->price / 100) * $products[$i]->sale) }}</td>
                            @else
                                <td id="price-{{ $i + 1 }}">{{ $products[$i]->price }}</td>
                            @endif
                        <td>
                            <input type="number"
                                   class="item-count"
                                   data-row-id="{{ $i + 1 }}"
                                   data-product-id="{{ $products[$i]->id }}"
                                   name=""
                                   value="{{ $products[$i]->getOriginal('pivot_count') }}"
                                    min="1"
                                    max="20">
                        </td>

                        @if($products[$i]->sale != 0)
                            <td id="{{ $i + 1 }}-row-total">
                                {{ ($products[$i]->price - (($products[$i]->price / 100) * $products[$i]->sale)) * $products[$i]->getOriginal('pivot_count')}}
                            </td>
                        @else
                            <td id="{{ $i + 1 }}-row-total">
                                {{ $products[$i]->price * $products[$i]->getOriginal('pivot_count')}}
                            </td>
                        @endif

                        <td><button type="button" id="delbtn-{{ $products[$i]->id }}" class="btn btn-danger del-row-btn">X</button></td>
                    </tr>
                @endfor
                </tbody>
            </table>
            <div class="col-1">
                <a href="{{ route('order_get') }}" class="btn btn-success">Submit</a>
            </div>
            @else
                <p class="text-center">Your cart is empty</p>
            @endif

        </div>

    </div>
@endsection
@section('scripts')
    <script src="{{ asset('assets/js/cart.js') }}"></script>
@endsection
