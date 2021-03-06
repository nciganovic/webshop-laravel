@extends('layouts.layout-admin')
@section('meta')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center m-3">Products</h1>
            <div class="mt-3 mb-3">
                <a class="btn btn-success" href="{{ route('product_create_get') }}">Create</a>
            </div>
            <table class="table table-hover">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Slug</th>
                    <th>Sale</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                @foreach($products as $product)
                    <tr>
                        <th>{{ $product->id }}</th>
                        <th>{{ $product->name }}</th>
                        <th>{{ $product->price }}</th>
                        <th>{{ $product->image }}</th>
                        <th>{{ $product->slug }}</th>
                        <th>{{ $product->sale }}</th>
                        <th><a class="btn btn-info" href="{{ route('product_edit_get', ['id' => $product->id]) }}">Edit</a></th>
                        <th><button data-id="{{ $product->id }}" class="btn btn-danger" href="#">Delete</button></th>
                    </tr>
                @endforeach
            </table>
        </div>
        <div class="col-12 d-flex justify-content-center mt-3">
            {{ $products->links() }}
        </div>
    </div>
@endsection
@section('scripts')
    <script src="{{ asset('assets/js/delete_product.js') }}"></script>
@endsection
