@extends('layouts.layout-main')
@section('title') Product  @endsection
@section('content')
    <div class="row mt-3 d-flex justify-content-center">
        <div class="col-6">
            <div class="card">
                <img
                    src="https://mdbootstrap.com/img/new/standard/nature/184.jpg"
                    class="card-img-top"
                    alt="..."
                />
                <div class="card-body">
                    <h5 class="card-title text-center">Card title</h5>
                    <p class="card-text text-center">
                        Some quick example text to build on the card title and make up the bulk of the
                        card's content.
                    </p>
                    <div class="d-flex justify-content-center">
                        <div href="#!" class="btn btn-primary m-3">10.99$</div>
                        <div href="#!" class="btn btn-primary m-3">20%</div>
                        <div href="#!" class="btn btn-primary m-3">Order now</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
