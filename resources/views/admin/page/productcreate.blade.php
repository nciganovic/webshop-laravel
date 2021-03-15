@extends('layouts.layout-admin')
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Create product</h1>
            <form enctype="multipart/form-data" method="POST" action="{{ route('product_create_post') }}">
                @csrf
                <div class="form-group mt-3">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name"  placeholder="Name">
                    @error('name')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="price">Price</label>
                    <input type="number" min="0"  class="form-control" id="price" name="price"  placeholder="Price">
                    @error('price')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="description">Description</label>
                    <textarea rows="5" class="form-control" id="description" name="description"  placeholder="Description"></textarea>
                    @error('description')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="image">Image</label>
                    <input type="file" class="form-control" id="image" name="image"  placeholder="Image">
                    @error('image')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="sale">Sale</label>
                    <input  multipart/form-data type="number" min="0" max="50" class="form-control" name="sale" id="sale"  placeholder="Sale">
                    @error('sale')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <button class="btn btn-success mt-3" type="submit">Create</button>
            </form>
        </div>
    </div>
@endsection
