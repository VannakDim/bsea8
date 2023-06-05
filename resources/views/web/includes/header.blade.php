<!-- <nav class="navbar navbar-default navbar-fixed-top" style="border-top: 4px #008fd5 solid;"> -->
<nav class="navbar navbar-default navbar-fixed-top" style="border-top: 4px #008fd5 solid;">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand text-center" href="{{ route('homePage') }}">
          <img src="{{ asset('web/bsea-logo.png') }}" alt="" height="70" width="70">
            <h6>សមាគមកាបូប ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា</br>
            Cambodia's Bags, Shoes and Electronic Association</h6>
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="{{ route('homePage') }}">Home</a></li>
        <!-- <li><a href="{{ route('mostPopularPage') }}" title="Most Popular">Become our Memeber</a></li> -->
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
        <!-- <li><a href="{{ route('galleryPage') }}" title="Categories">Members</a></li> -->
        <li>
          <a>Members</a>
          <ul class="dropdown">
              <li><a href="#">Our Members</a></li>
              <li><a href="#">Become our Members</a></li>
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
        <!-- <li><a href="{{ route('register') }}">Register</a></li> -->
        @endif
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="clearfix" style="margin-bottom: 55px;"></div>
