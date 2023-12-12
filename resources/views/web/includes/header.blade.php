

<!-- HTML CSS javascript Header --> 

  <header class="header">
    <nav class="nav">
      <div class="nav__data">
          <a href="{{ route('homePage') }}" class="nav__logo">
          <img style="padding-right: 10px" id="logo-img" src="{{ asset('web/logo/bsea-logo.png') }}" alt=""​><div class="bsea-title" style="font-size: 1.2rem"><h4> សមាគមកាបូប​ ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា</h4> Cambodia's Bag, Shoe & Electronic Association</div>
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
                      <i class="fa fa-tag"></i> Tags
                      </a>                          
                  </li>

                  <li>
                      <a href="{{ route('categoriesPage') }}" class="dropdown__link">
                        <i class="ri-file-list-line"></i> Categories
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

            <li><a href="{{ route('member') }}" class="nav__link">Members</a></li>
            
            <li><a href="{{ route('resource') }}" class="nav__link">Download</a></li>
            

            <li><a href="{{ route('contactUsPage') }}" class="nav__link">Contact</a></li>

            <!--=============== DROPDOWN 2 ===============-->
            <li class="dropdown__item">
            <div class="nav__link">
              <i class="ri-user-line"></i> <i class="ri-arrow-down-s-line dropdown__arrow"></i>
            </div>
                <ul class="dropdown__menu">
                  <li>
                    @if(Auth::check())
                    <li>
                    <a class="dropdown__link" href="{{ route('dashboard.dashboardPage') }}" title="Dashboard"><i class="ri-dashboard-3-line"></i> Dashboard</a>
                    </li>
                    <li><a class="dropdown__link" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="ri-logout-box-line"></i> Logout</a></li>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                      {{ csrf_field() }}
                    </form>
                    @else
                      <a href="{{ route('login') }}" class="dropdown__link">
                        <i class="ri-user-line"></i> Login
                      </a>                          
                    @endif
                  </li>
                </ul>
            </li>

          </ul>
      </div>
    </nav>
  </header>

  <!-- <i class="ri-dashboard-3-line"></i> -->