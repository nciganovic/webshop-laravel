@extends('layouts.layout-admin')
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Admin panel</h1>
        </div>
        <div class="col-12">
            <div class="list-group">
                <a href="{{ route('products_show') }}" class="list-group-item list-group-item-action">Products</a>
            </div>
        </div>
    </div>
@endsection
