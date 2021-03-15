<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                @foreach($categories as $ctg)
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('category', ['category_slug' => $ctg->slug]) }}">{{ $ctg->name }}</a>
                </li>
                @endforeach
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('contact_us') }}">Contact us</a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                @if($auth)
                    @if($is_admin)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin_index') }}">Admin</a>
                        </li>
                    @endif
                    <li class="nav-item">
                        <a href="{{ route('cart_display') }}" type="button" class="nav-link active btn">
                            Cart @if(isset($cart_count)) <span id="cart-count" class="badge bg-secondary">{{ $cart_count }}</span> @endif
                            <span class="visually-hidden">unread messages</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="{{ route('logout') }}">Logout</a>
                    </li>
                    @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register_get') }}">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login_get') }}">Login</a>
                    </li>
                @endif
            </ul>
      </span>
        </div>
    </div>
</nav>
