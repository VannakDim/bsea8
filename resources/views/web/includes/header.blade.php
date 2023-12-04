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


<!-- HTML CSS javascript Header -->

  <header class="header">
    <nav class="nav">
      <div class="nav__data">
          <a href="{{ route('homePage') }}" class="nav__logo">
          <img id="logo-img" src="{{ asset('web/logo/bsea-logo.png') }}" alt=""​><div class="bsea-title"><h4>សមាគមកាបូប​ ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា</h4>Cambodia's Bag, Shoe & Electronic Association</div>
          </a>
          
          <div class="nav__toggle" id="nav-toggle">
            <i class="ri-menu-line nav__burger"></i>
            <i class="ri-close-line nav__close"></i>
          </div>
      </div>

      <!--=============== NAV MENU ===============-->
      <div class="nav__menu" id="nav-menu">
          <ul class="nav__list">
            <li><a href="{{ route('homePage') }}" class="nav__link">Home</a></li>


            <!--=============== DROPDOWN 1 ===============-->
            <li class="dropdown__item">
                <div class="nav__link">
                  News <i class="ri-arrow-down-s-line dropdown__arrow"></i>
                </div>

                <ul class="dropdown__menu">
                  <li>
                      <a href="{{ route('tagsPage') }}" class="dropdown__link">
                        <i class="ri-pie-chart-line"></i> Tags
                      </a>                          
                  </li>

                  <li>
                      <a href="{{ route('categoriesPage') }}" class="dropdown__link">
                        <i class="ri-arrow-up-down-line"></i> Categories
                      </a>
                  </li>

                  <!--=============== DROPDOWN SUBMENU ===============-->
                  <!-- <li class="dropdown__subitem">
                      <div class="dropdown__link">
                        <i class="ri-bar-chart-line"></i> Reports <i class="ri-add-line dropdown__add"></i>
                      </div>

                      <ul class="dropdown__submenu">
                        <li>
                            <a href="#" class="dropdown__sublink">
                              <i class="ri-file-list-line"></i> Documents
                            </a>
                        </li>

                        <li>
                            <a href="#" class="dropdown__sublink">
                              <i class="ri-cash-line"></i> Payments
                            </a>
                        </li>

                        <li>
                            <a href="#" class="dropdown__sublink">
                              <i class="ri-refund-2-line"></i> Refunds
                            </a>
                        </li>
                      </ul>
                  </li> -->
                </ul>
            </li>

            <li><a href="#" class="nav__link">Members</a></li>
            
            <li><a href="#" class="nav__link">Download</a></li>
            

            <li><a href="{{ route('contactUsPage') }}" class="nav__link">Contact</a></li>

            <!--=============== DROPDOWN 2 ===============-->
            <li class="dropdown__item">
            <div class="nav__link">
              <i class="ri-user-line"></i> <i class="ri-arrow-down-s-line dropdown__arrow"></i>
            </div>
                <ul class="dropdown__menu">
                  <li>
                      <a href="{{ route('login') }}" class="dropdown__link">
                        <i class="ri-user-line"></i> Login
                      </a>                          
                  </li>

                  <li>
                      <a href="#" class="dropdown__link">
                        <i class="ri-lock-line"></i> Accounts
                      </a>
                  </li>

                  <!-- <li>
                      <a href="#" class="dropdown__link">
                        <i class="ri-message-3-line"></i> Messages
                      </a>
                  </li> -->
                </ul>
            </li>

          </ul>
      </div>
    </nav>
  </header>