<!DOCTYPE html>
<html>
    <head>
        @include('main.includes.head')
    </head>
    <body>
        @include('main.includes.navbar')
        <div class="container">
            @yield('content')
        </div>
        @include('main.includes.footer')
    </body>
</html>
