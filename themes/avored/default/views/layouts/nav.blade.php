<nav class="navbar navbar-expand-md navbar-dark bg-dark" style="padding:0;">
    <div class="container">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-facebook"></i> Facebook</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fab fa-twitter"></i> Twitter</a>
            </li>
        </ul>
        <ul class="navbar-nav">

            @auth()

                <li class="nav-item active">
                    <a class="nav-link" href="#">Welcome {{ Auth::user()->full_name }} !
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="{{ route('my-account.home') }}">My Account
                        <span class="sr-only">(current)</span>
                    </a>
                </li>


            @endauth

            @guest()
            <li class="nav-item active">
                <a class="nav-link" href="#">Welcome!
                    <span class="sr-only">(current)</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{ route('login') }}">Sign In </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('register') }}">Create an Account</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('cart.view') }}">Cart ({{ Cart::count() }})</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('checkout.index') }}">Checkout</a>
            </li>
            @endguest()

        </ul>
    </div>
</nav>

<header style="padding: 40px 0;">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a class="navbar-brand" href="{{ route('home') }}">
                    <span style="font-size: 32px; font-weight: 500; margin-top: 10px;">
                        <img src="{{ url('/img/logo.png')}}" alt="Peach Blossom" class="logo" style="width: 100%;">
                    </span>
                </a>
            </div>
            <div class="col-md-6">
                <form class="navbar-form" action="{{ route('search.result') }}" method="get" role="search">
                    <div class="input-group" style="padding-top: 14px;">
                        <input type="text" class="form-control" placeholder="Search entire store here..." name="q">
                        <div class="input-group-btn">
                            <button class="btn btn-primary" type="submit">
                                <i class="oi oi-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <!--<div class="col-md-1">
                <a class="nav-link" href="http://demo.avored.website/cart/view">Cart (0)</a>
            </div>-->
        </div>
    </div>
</header>
   
<nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container">
        <a class="" href="{{url('/')}}">Home!</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle"
                       href="{{ route ('category.view', 'Products')}}" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                       title="Plants">
                        Plants <span class="caret"></span>
                    </a>
                   
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                          <a class="dropdown-item" href="{{ route ('category.view', 'Flowers')}}">Flowers</a>
                          <a class="dropdown-item" href="{{ route ('category.view', 'cactus')}}">Cactus</a>
                          <a class="dropdown-item" href="{{ route ('category.view', 'plant')}}">Indoor Plant</a>
                    </div>
                </li>
                <li class="dropdown nav-item">
                    <a href="{{ route ('category.view', 'Tool')}}" title="Tools" class="nav-link">
                            Tools
                    </a>
                </li>
                <li class="dropdown nav-item">
                    <a href="{{ route ('category.view', 'living-room')}}" title="living-room" class="nav-link">
                           Living Rooms
                    </a>
                </li>
                <li class="dropdown nav-item">
                    <a href="{{ url('proffesionalhire/show')}}" title="living-room" class="nav-link">
                           Appoint Professional
                    </a>
                </li>
                <li class="dropdown nav-item">
                    <a href="{{ route('my-account.home') }}" title="My Account" class="nav-link">
                        My Account
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
