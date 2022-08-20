 <nav class="navbar navbar-expand-lg navbar-light bg-#fff shadow-sm p-3 mb-5 bg-body rounded">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="{{url('/ ')}}">Aksara BookStore</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="{{url('/ ')}}">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="{{url('/user_product')}}">Product</a></li>

            </ul> 
             
            
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
               <li> <a class="text-decoration-none text-dark fs-6" aria-current="page" href="{{url('/login')}} ">Login</a></li>
               <li><a class="text-decoration-none text-dark fs-6" href=""><i class="bi-cart-fill ms-4"></i></a></li>
            </ul>
            {{-- <form class="d-flex">
              <button class="btn btn-dark " type="submit">
                <a class="text-decoration-none text-light" aria-current="page" href="{{url('/register')}} "> Register</a>
                </button>
            </form> --}}
        </div>
    </div>
</nav> 

  