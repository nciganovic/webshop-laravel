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
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>X</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>X</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry the Bird</td>
                    <td>Bird</td>
                    <td>X</td>
                </tr>
                <tr>
                    <th scope="row">Total:</th>
                    <td></td>
                    <td></td>
                    <td>123</td>
                </tr>
                </tbody>
            </table>

        </div>
        <div class="col-12">
            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">First name</label>
                    <input type="email" class="form-control" placeholder="Enter first name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Last name</label>
                    <input type="email" class="form-control" placeholder="Enter last name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Street</label>
                    <input type="email" class="form-control" placeholder="Enter street">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">City</label>
                    <input type="email" class="form-control" placeholder="Enter city">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Postal code</label>
                    <input type="email" class="form-control" placeholder="Enter postal code">
                </div>
                <button type="submit" class="btn btn-primary mt-5">Submit</button>
            </form>
        </div>
    </div>
@endsection
