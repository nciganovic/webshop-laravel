@extends('layouts.layout-main')
@section('title') Register  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Register</h1>
        </div>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="col-8">
            <form action="{{ route('register_post') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="first_name">First name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" value="" />
                    @error('first_name')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="last_name">Last name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" value="" />
                    @error('last_name')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="email" value="" />
                    @error('email')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" value="" />
                    @error('address')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" value="" />
                    @error('password')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="repeat_password">Repeat password</label>
                    <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" value="" />
                    @error('password_confirmation')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>

                <button type="submit" class="btn btn-primary mt-3">Submit</button>
            </form>
        </div>
    </div>
@endsection
