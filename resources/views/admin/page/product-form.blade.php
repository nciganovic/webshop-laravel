@extends('layouts.layout-admin')
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">
                @if($action == "create")
                    Create product
                @else
                    Edit product
                @endif
            </h1>
            <form
                enctype="multipart/form-data" method="POST"
                @if($action == "create")
                    action="{{ route('product_create_post') }}"
                @else

                    action="{{ route('product_edit_post', ['id' => $product->id ]) }}"
                @endif
            >
                @csrf
                <div class="form-group mt-3">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="{{ $product->name }}"  placeholder="Name">
                    @error('name')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="price">Price</label>
                    <input type="number" min="0"  class="form-control" id="price" name="price" value="{{ $product->price }}"   placeholder="Price">
                    @error('price')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="description">Description</label>
                    <textarea rows="5" class="form-control" id="description" name="description"   placeholder="Description">{{ $product->description }}</textarea>
                    @error('description')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="image">Image</label>
                    <input type="file" class="form-control" id="image" name="image" placeholder="Image">
                    <div class="mt-3">
                        @if(isset($product->image))
                            <img src="{{ asset($product->image) }}" alt="{{ $product->name }}">
                        @endif
                    </div>
                    @error('image')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="sale">Sale</label>
                    <input type="number" min="0" max="50" class="form-control" value="{{ $product->sale }}" name="sale" id="sale"  placeholder="Sale">
                    @error('sale')
                        <p class="text-danger">{{$message}}</p>
                    @enderror
                </div>
                <div class="mt-3">
                    <p>Categories</p>
                    @foreach($categories as $category)
                        <div class="custom-control custom-checkbox mr-5">
                            <input type="checkbox" class="custom-control-input" id="category{{ $category->id }}" name="category_id[]" value="{{ $category->id }}"
                                   @if(isset($product) && in_array($category->id, $product->categories()->pluck('category_id')->toArray()))
                                        checked
                                   @elseif(is_array(old('category_id')) && in_array($category->id, old('category_id')))
                                        checked
                                   @endif
                            />
                            <label class="custom-control-label" for="category{{ $category->id }}">{{ $category->name }}</label>
                        </div>
                    @endforeach
                </div>

                <div class="mt-3">
                    <p>Sizes</p>
                    @foreach($sizes as $size)
                        <div class="custom-control custom-checkbox mr-5">
                            <input type="checkbox" class="custom-control-input" id="size{{ $size->id }}" name="size_id[]" value="{{ $size->id }}"
                                   @if(isset($product) && in_array($size->id, $product->sizes()->pluck('size_id')->toArray()))
                                        checked
                                   @elseif(is_array(old('size_id')) && in_array($size->id, old('size_id')))
                                        checked
                                    @endif
                            />
                            <label class="custom-control-label" for="size{{ $size->id }}">{{ $size->name }}</label>
                        </div>
                    @endforeach
                </div>

                <button class="btn btn-success mt-3" type="submit">
                    @if($action == "create")
                        Create
                    @else
                        Edit
                    @endif
                </button>
            </form>
        </div>
    </div>
@endsection
