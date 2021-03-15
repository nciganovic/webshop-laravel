<div class="col-4 mt-3">
    <a class="text-dark nounderline" href="{{ route('product', ['product_slug' => $product->slug]) }}">
        <div class="card">
            <img
                src="{{ asset($product->image) }}"
                class="card-img-top"
                alt="{{ $product->name }}"
            />
            <div class="card-body">
                <h5 class="card-title">{{ $product->name }}</h5>
                <p class="card-text">
                    {{ $product->description }}
                </p>
                <div href="#!" class="btn btn-primary">
                    @if($product->sale != 0)
                        <s>{{ $product->price }}$</s>
                    @else
                        {{ $product->price }}$
                    @endif
                </div>
                @if($product->sale != 0)
                    <div class="btn btn-primary">{{ $product->price - (($product->price / 100) * $product->sale) }}$</div>
                    <div class="btn btn-primary">{{ $product->sale }}%</div>
                @endif
            </div>
        </div>
    </a>
</div>
