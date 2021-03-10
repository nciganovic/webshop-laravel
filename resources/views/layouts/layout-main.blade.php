<!DOCTYPE html>
<html>
    <head>
        @include('main.includes.head')
    </head>
    <body>
        <div id="page-container">
            <div id="content-wrap">
                @include('main.includes.navbar')
                <div class="container">
                    @yield('content')
                </div>
            </div>
            @include('main.includes.footer')
        </div>
    </body>
    @yield('scripts')
</html>
