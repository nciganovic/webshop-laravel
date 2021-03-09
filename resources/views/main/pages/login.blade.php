@extends('layouts.layout-main')
@section('title') Shop  @endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Login</h1>
        </div>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="col-8">
            <form action="{{ route('login_post') }}" method="POST">
                @csrf
                <div class="form-group mt-3">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                    @error('email')
                    <div class="text-danger">
                        {{$message}}
                    </div>
                    @enderror
                </div>
                <div class="form-group mt-3">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <div class="form-check mt-3">
                    <input type="checkbox" class="form-check-input" id="remember_me" name="remember_me">
                    <label class="form-check-label" for="remember_me">Remember me</label>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Submit</button>
            </form>
        </div>
    </div>
@endsection
