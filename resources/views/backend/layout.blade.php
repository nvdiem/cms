<!DOCTYPE html>
<html>

<head>
    @include('backend.widgets.head')

</head>

<body>
    <div id="wrapper">
        @include('backend.widgets.sidebar')

        <div id="page-wrapper" class="gray-bg">
            @include('backend.widgets.nav')
            @include($view)
        @include('backend.widgets.footer')
        </div>
    </div>

    @include('backend.widgets.script')
</body>
</html>
