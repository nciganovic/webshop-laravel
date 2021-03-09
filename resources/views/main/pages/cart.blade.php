@extends('layouts.layout-main')
@section('title') Cart  @endsection
@section('content')
    <div class="row mt-3 d-flex justify-content-center">
        <div class="col-12">
            <h1 class="text-center">Cart</h1>
        </div>
        <div class="col-12">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Product name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Count</th>
                    <th scope="col">Remove</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td><input type="number" name=""></td>
                    <td><button type="button" class="btn btn-danger">X</button></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td><input type="number" name=""></td>
                    <td><button type="button" class="btn btn-danger">X</button></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry the </td>
                    <td>Bird</td>
                    <td><input type="number" name=""></td>
                    <td><button type="button" class="btn btn-danger">X</button></td>
                </tr>
                </tbody>
            </table>

        </div>
        <div class="col-1">
            <a href="#" class="btn btn-success">Submit</a>
        </div>
    </div>
@endsection
