<!DOCTYPE html>
<html>
<head>
    @include('main.includes.head')
</head>
<body>
<div id="page-container">
    <div id="content-wrap">
        @include('admin.includes.navbar')
        <div class="container">
            @yield('content')
        </div>
    </div>
</div>
</body>
@yield('scripts')
</html>
