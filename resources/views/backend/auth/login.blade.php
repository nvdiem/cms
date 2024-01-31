<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CMS Login</title>

    <link href="backend/css/bootstrap.min.css" rel="stylesheet">
    <link href="backend/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="backend/css/animate.css" rel="stylesheet">
    <link href="backend/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">IN+</h1>

            </div>
            <h3>Welcome to IN+</h3>
            <p>Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>Login in. To see it in action.</p>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            <form method="post" class="m-t" role="form" action="{{ route('auth.login') }}">
                @csrf
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="email" name="email">
                    @if ($errors->has('email'))
                    <span class="error-message">
                        {{ $errors->first('email') }}
                    </span>
                    @endif
                   
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="password">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                <a href="#"><small>Forgot password?</small></a>
            </form>
            <p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2024</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
</body>

</html>
