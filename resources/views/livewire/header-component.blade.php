
	<header id="header" class="header header-style-1">
		<div class="container-fluid">
			<div class="row">
				<div class="topbar-menu-area">
					<div class="container">
						<div class="topbar-menu left-menu">
							<ul>
								<li class="menu-item" >
									<a title="Infoline: (+225) 05 46 85 99 36" href="#" ><span class="icon label-before fa fa-mobile"></span>Infoline: (+225) 05 46 85 99 36</a>
								</li>
							</ul>
						</div>
						<div class="topbar-menu right-menu">
							<ul>

								{{--  <li class="menu-item menu-item-has-children parent" >
									<a title="Dollar (USD)" href="#">Dollar (USD)<i class="fa fa-angle-down" aria-hidden="true"></i></a>
									<ul class="submenu curency" >
										<li class="menu-item" >
											<a title="Pound (GBP)" href="#">Pound (GBP)</a>
										</li>
										<li class="menu-item" >
											<a title="Euro (EUR)" href="#">Euro (EUR)</a>
										</li>
										<li class="menu-item" >
											<a title="Dollar (USD)" href="#">Dollar (USD)</a>
										</li>
									</ul>
								</li>  --}}
                                @if(Route::has('login'))
                                   @auth
                                       @if(Auth::user()->utype === 'ADM')
                                          <li class="menu-item menu-item-has-children parent" >
                                            <a title="Mon Compte" href="#">Compte ({{ Auth::user()->name }})<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                            <ul class="submenu curency" >
                                                <li class="menu-item" >
                                                    <a title="Tableau Bord" href="{{ route('admin.dashboard') }}">Dashboard</a>
                                                </li>
												 <li class="menu-item" >
                                                    <a title="Categories" href="{{ route('admin.categories') }}">Categories</a>
                                                </li>
												 <li class="menu-item" >
                                                    <a title="Categories" href="{{ route('admin.products') }}">Produits</a>
                                                </li>

                                                <li class="menu-item" >
                                                    <a title="Categories" href="{{ route('admin.homecategories') }}">Home manager category</a>
                                                </li>


												<li class="menu-item" >
                                                    <a   href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('form-logout').submit();">Logout</a>
                                                </li>
                                                <form id="form-logout" method="POST" action="{{ route('logout') }}">
												@csrf

												</form>
                                            </ul>
								         </li>
                                       @else
                                            <li class="menu-item menu-item-has-children parent" >
                                            <a title="Mon Compte" href="#">Compte ({{ Auth::user()->name }})<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                            <ul class="submenu curency" >
                                                <li class="menu-item" >
                                                    <a title="Tableau Bord" href="{{ route('user.dashboard') }}">Dashboard</a>
                                                </li>
                                               	<li class="menu-item" >
                                                    <a   href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('form-logout').submit();">Se déconnecter</a>
                                                </li>
                                                <form id="form-logout" method="POST" action="{{ route('logout') }}">
												@csrf
												</form>
                                            </ul>
								         </li>
                                       @endif
                                   @else
                                    <li class="menu-item" ><a title="Register or Login" href="{{ route('login') }}">Connexion</a></li>
								    <li class="menu-item" ><a title="Register or Login" href="{{ route('register')}}">Inscription</a></li>
                                  @endif
                                @endif





							</ul>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="mid-section main-info-area">

						<div class="wrap-logo-top left-section">
							<a href="/" class="link-to-home"><img src=" {{ asset('assets/images/logo-top-1.png ') }}" alt="mercado"></a>
						</div>

					    @livewire('header-search-component')

						<div class="wrap-icon right-section">
							<div class="wrap-icon-section wishlist">
								<a href="#" class="link-direction">

								</a>
							</div>
							<div class="wrap-icon-section minicart">
								<a href="/cart" class="link-direction">
									<i class="fa fa-shopping-basket" aria-hidden="true"></i>
									<div class="left-info">
									@if(Cart::count() > 0)
									<span class="index">{{ Cart::count()}}</span>

									@endif


									</div>
								</a>
							</div>
							<div class="wrap-icon-section show-up-after-1024">
								<a href="#" class="mobile-navigation">
									<span></span>
									<span></span>
									<span></span>
								</a>
							</div>
						</div>

					</div>
				</div>

				<div class="nav-section header-sticky">
					{{--  <div class="header-nav-section">
						<div class="container">
							<ul class="nav menu-nav clone-main-menu" id="mercado_haead_menu" data-menuname="Sale Info" >
								<li class="menu-item"><a href="#" class="link-term">Weekly Featured</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Hot Sale items</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Top new items</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Top Selling</a><span class="nav-label hot-label">hot</span></li>
								<li class="menu-item"><a href="#" class="link-term">Top rated items</a><span class="nav-label hot-label">hot</span></li>
							</ul>
						</div>
					</div>  --}}

					<div class="primary-nav-section">
						<div class="container">
							<ul class="nav primary clone-main-menu" id="mercado_main" data-menuname="Main menu" >
								<li class="menu-item home-icon">
									<a href="/" class="link-term mercado-item-title"><i class="fa fa-home" aria-hidden="true"></i></a>
								</li>
								<li class="menu-item">
									<a href="/a-propos" class="link-term mercado-item-title">A propos</a>
								</li>
								<li class="menu-item">
									<a href="/shop" class="link-term mercado-item-title">Boutique</a>
								</li>
								<li class="menu-item">
									<a href="/cart" class="link-term mercado-item-title">Panier</a>
								</li>
								<li class="menu-item">
									<a href="/checkout" class="link-term mercado-item-title">Commander</a>
								</li>
								<li class="menu-item">
									<a href="/contact" class="link-term mercado-item-title">Contact</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
