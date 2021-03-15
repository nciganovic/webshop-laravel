@extends('layouts.layout-main')
@section('title') Order  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Order now</h1>
        </div>
    </div>
    <div class="row d-flex justify-content-start">
        <div class="col-12">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Product name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Count</th>
                    <th scope="col">Total</th>
                </tr>
                </thead>
                <tbody>
                @for($i = 0; $i < count($products); $i++)
                <tr>
                    <th scope="row">{{ $i + 1 }}</th>
                    <td>{{ $products[$i]->name }}</td>
                    @if($products[$i]->sale != 0)
                        <td id="price-{{ $i + 1 }}">{{ $products[$i]->price - (($products[$i]->price / 100) * $products[$i]->sale) }}</td>
                    @else
                        <td id="price-{{ $i + 1 }}">{{ $products[$i]->price }}</td>
                    @endif
                    <td>{{ $products[$i]->getOriginal('pivot_count')}}</td>
                    @if($products[$i]->sale != 0)
                        <td id="{{ $i + 1 }}-row-total">
                            {{ ($products[$i]->price - (($products[$i]->price / 100) * $products[$i]->sale)) * $products[$i]->getOriginal('pivot_count')}}
                        </td>
                    @else
                        <td id="{{ $i + 1 }}-row-total">
                            {{ $products[$i]->price * $products[$i]->getOriginal('pivot_count')}}
                        </td>
                    @endif
                </tr>
                @endfor
                <tr>
                    <td></td>
                    <th>Sum total:</th>
                    <td></td>
                    <td></td>
                    <td>
                        {{ $sum }}
                    </td>
                </tr>
                </tbody>
            </table>

        </div>
        <div class="col-12 mt-5">
            <form action="{{ route('order_post') }}" method="POST">
                @csrf
                <div class="form-group mt-3">
                    <label for="street">Country</label>
                    <input type="text" class="form-control" name="country" placeholder="Enter country name">
                </div>
                @error('country')
                <div class="text-danger">
                    {{$message}}
                </div>

                @enderror
                <div class="form-group mt-3">
                    <label for="city">City</label>
                    <input type="text" class="form-control" name="city" placeholder="Enter city">
                </div>
                @error('city')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror

                <div class="form-group mt-3">
                    <label for="postal_code">Postal code</label>
                    <input type="number" min="0" name="postal_code" class="form-control" placeholder="Enter postal code">
                </div>
                @error('postal_code')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror

                <div class="form-group mt-3">
                    <label for="phone_number">Phone number</label>
                    <input type="number" min="0" name="phone_number" class="form-control" placeholder="Enter phone number">
                </div>
                @error('phone_number')
                <div class="text-danger">
                    {{$message}}
                </div>
                @enderror

                <button type="submit" class="btn btn-primary mt-5">Submit</button>

            </form>
        </div>
    </div>
@endsection
