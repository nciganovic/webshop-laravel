@extends('layouts.layout-admin')
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center m-3">Products</h1>
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
                        <th><a class="btn btn-info" href="#">Edit</a></th>
                        <th><a class="btn btn-danger" href="#">Delete</a></th>
                    </tr>
                @endforeach
            </table>


        </div>
        <div class="col-12 d-flex justify-content-center">
            {{ $products->links() }}
        </div>
    </div>
@endsection
