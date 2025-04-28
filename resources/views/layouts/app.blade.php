<!doctype html>
<html>

<head>
    @include('includes.head')
</head>

<body>
    <div class="max-w-6xl w-full mx-auto border-2 border-black rounded-2xl ">
        <header class="grid grid-cols-12 p-2">
            @include('includes.header')
        </header>
        <div id="main" class="grid grid-cols-12">
            @yield('content')
        </div>
        <footer class="grid grid-cols-12">
            @include('includes.footer')
        </footer>   
    </div>
    @yield('js')
</body>

</html>