<base href="http://cms.local/public">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="apple-touch-icon" href="">
<link rel="icon" href="">


<title> Dashboard</title>

<link href="backend/css/bootstrap.min.css" rel="stylesheet">
<link href="backend/font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="backend/css/style.css" rel="stylesheet">
<link href="backend/css/animate.css" rel="stylesheet">


@if(isset($config['css']))
    @foreach ($config['css'] as $item)
        <link href="{{ $item }}" rel="stylesheet">	    
    @endforeach
@endif

<link href="backend/css/custome.css" rel="stylesheet">
<script src="backend/js/jquery-3.1.1.min.js"></script>