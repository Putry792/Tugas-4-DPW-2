@php
 function checkRouteActive($route){
  if(Route::current()->uri == $route) return 'active';
 }   
@endphp

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{url('/beranda')}}" class="brand-link">
      <img src="{{url('/public')}}/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin Aksara</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
     
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <li class="nav-item">
                <a href="{{url('/beranda')}}" class="nav-link {{checkRouteActive('beranda')}}">
                  <i class="nav-icon fas fa-home"></i>
                  <p>Beranda</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('product')}}" class="nav-link {{checkRouteActive('admin-product')}}">
                  <i class="nav-icon fas fa-store"></i>
                  <p>Produk</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('/kategori')}}" class="nav-link {{checkRouteActive('kategori')}}">
                  <i class="nav-icon fas fa-bookmark"></i>
                  <p>Kategori</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link {{checkRouteActive('promo')}}">
                  <i class="nav-icon fas fa-percent"></i>
                  <p>Promo</p>
                </a>
              </li>
          <li class="nav-item menu-open">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Master Data
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link {{checkRouteActive('pelanggan')}}">
                <i class="nav-icon fa-solid fas fa-user"></i>
                Pelanggan
                  
                </a>
              </li>
              <li class="nav-item {{checkRouteActive('supplier')}}">
                <a href="#" class="nav-link">
                    <i class="nav-icon fa-solid fas fa-truck"></i>
                  Supplier
                  
                </a>
              </li>
            </ul>
          </li>
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
