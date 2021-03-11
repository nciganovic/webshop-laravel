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
                        <td id="price-{{ $i + 1 }}">{{ $products[$i]->price }}</td>
                        <td>
                            <input type="number"
                                   class="item-count"
                                   data-row-id="{{ $i + 1 }}"
                                   name=""
                                   value="{{ $products[$i]->getOriginal('pivot_count') }}"
                                    min="1"
                                    max="20">
                        </td>
                        <td id="{{ $i + 1 }}-row-total">
                            {{ $products[$i]->price * $products[$i]->getOriginal('pivot_count')}}
                        </td>
                        <td><button type="button" id="delbtn-{{ $products[$i]->id }}" class="btn btn-danger del-row-btn">X</button></td>
                    </tr>
                @endfor

                </tbody>
            </table>

        </div>
        <div class="col-1">
            <a href="#" class="btn btn-success">Submit</a>
        </div>
    </div>
@endsection
@section('scripts')
    <script src="{{ asset('assets/js/cart.js') }}"></script>
@endsection
