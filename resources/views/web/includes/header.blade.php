<!-- <nav class="navbar navbar-default navbar-fixed-top" style="border-top: 4px #008fd5 solid;"> -->
<!-- <nav class="navbar navbar-default navbar-fixed-top" style="border-top: 4px #008fd5 solid;"> -->
  <!-- <div class="container"> -->
    <!-- Brand and toggle get grouped for better mobile display -->
    
    <!-- <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand text-center" href="{{ route('homePage') }}">
          <img src="{{ asset('web/bsea-logo.png') }}" alt="">
            <h6>សមាគមកាបូប ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា</br>
            Cambodia's Bags, Shoes and Electronic Association</h6>
        </a>
    </div> -->

    <!-- Collect the nav links, forms, and other content for toggling -->
    <!-- <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="{{ route('homePage') }}">Home</a></li>
        <li>
          <a>News</a>
          <ul class="dropdown">
            <li>
              <a href="{{ route('tagsPage') }}" title="Tags">Tags</a>
              <a href="{{ route('categoriesPage') }}" title="Tags">Categories</a>
            </li>
          </ul>
        
        </li>
        <li><a href="{{ route('categoriesPage') }}" title="Categories">Laws</a></li>
        <li><a href="{{ route('contactUsPage') }}" title="Contact Us">Contact Us</a></li>
        <li>
          <a>Members</a>
          <ul class="dropdown">
              <li><a href="#">Our Members</a></li>
              <li><a href="#">Become Members</a></li>
          </ul>
        </li>

        @if(Auth::check())
        <li><a href="{{ route('dashboard.dashboardPage') }}" title="Dashboard"> Dashboard</a></li>
        <li><a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a></li>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          {{ csrf_field() }}
        </form>
        @else
        <li><a href="{{ route('login') }}">Login</a></li>
        @endif
      </ul>
    </div> -->
    <!-- /.navbar-collapse -->
  <!-- </div> -->
  <!-- /.container-fluid -->
<!-- </nav> -->
<!-- <div class="clearfix" style="margin-bottom: 55px;"></div> -->
<header class="header" id="header">
    <nav class="nav container">
      <!-- <a href="#" class="nav__logo">BSEA</a> -->
      <a class="nav__logo" href="{{ route('homePage') }}" style="display:flex; align-items: center;">
          <img src="{{ asset('web/bsea-logo.png') }}" alt="" style="height:3.5rem; padding-right:10px;">
          <!-- <div class="nav__title" style="font-size:1.1rem;">
            <div class="kh_title">សមាគមកាបូប​ ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា</br><h6>Cambodia's Bags, Shoes and Electronic Association</h6></div>
          </div> -->
          
      </a>
      <!-- <a href="" class="nav__logo">សមាគមកាបូប​ ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា</a> -->

      <div class="nav__menu" id="nav-menu">
      <ul class="nav navbar-nav navbar-right nav__list">
        <li class="nav__item"><a href="{{ route('homePage') }}">Home</a></li>
        <li>
          <a>News</a>
          <ul class="dropdown">
            <li>
              <a href="{{ route('tagsPage') }}" title="Tags">Tags</a>
              <a href="{{ route('categoriesPage') }}" title="Tags">Categories</a>
            </li>
          </ul>
        
        </li>
        <li><a href="{{ route('categoriesPage') }}" title="Categories">Laws</a></li>
        <li><a href="{{ route('contactUsPage') }}" title="Contact Us">Contact Us</a></li>
        <li>
          <a>Members</a>
          <ul class="dropdown">
              <li><a href="#">Our Members</a></li>
              <li><a href="#">Become Members</a></li>
          </ul>
        </li>

        <!-- @if(Auth::check())
        <li><a href="{{ route('dashboard.dashboardPage') }}" title="Dashboard"> Dashboard</a></li>
        <li><a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a></li>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          {{ csrf_field() }}
        </form>
        @else
        <li><a href="{{ route('login') }}">Login</a></li>
        @endif -->
      </ul>

          <!-- <ul class="nav__list">
            <li class="nav__item">
                <a href="{{ route('homePage') }}" class="nav__link">Home</a>
            </li>

            <li class="nav__item">
                <a href="#" class="nav__link">About Us</a>
            </li>

            <li class="nav__item">
                <a href="#" class="nav__link">Services</a>
            </li>

            <li class="nav__item">
                <a href="#" class="nav__link">Featured</a>
            </li>

            <li class="nav__item">
                <a href="#" class="nav__link">Contact Me</a>
            </li>
          </ul> -->

          <!-- Close button -->
          <div class="nav__close" id="nav-close">
            <i class="ri-close-line"></i>
          </div>
      </div>

      <div class="nav__actions">
          <!-- Search button -->
          <i class="ri-search-line nav__search" id="search-btn"></i>

          <!-- Login button -->
          <a href="{{ route('login') }}">
            <i class="ri-user-line nav__login" id="login-btn"></i>
          </a>

          <!-- Toggle button -->
          <div class="nav__toggle" id="nav-toggle">
            <i class="ri-menu-line"></i>
          </div>
      </div>
    </nav>
</header>