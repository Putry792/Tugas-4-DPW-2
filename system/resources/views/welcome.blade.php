@include('navbar')
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Aksara BookStore</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="{{url('/public')}}/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
      
  
        <!-- Header-->
        <header >

            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active " data-bs-interval="10000">
                    <div class="d-flex justify-content-center">
                        <img src="{{url('/public')}}/images/17.jpg" class=" d-block w-75 p-1" alt="book">
                    </div>
                    
                  </div>
                  <div class="carousel-item" data-bs-interval="2000">
                    <div class="d-flex justify-content-center">
                        <img src="{{url('/public')}}/images/buku1.jpg" class=" d-block w-75 p-1" alt="book">
                    </div>
                    
                  </div>
                  <div class="carousel-item">
                    <div class="d-flex justify-content-center">
                        <img src="{{url('/public')}}/images/books.jpg" class=" d-block w-75 p-1" alt="book">
                    </div>
                    
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span> 
                  
                </button>
              </div>
        </header>
        <!-- Section-->
    <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/atom habit.jpg" alt="atomic habits" />
                            <!-- Product details-->
                            <div class="card-body p-0">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Atomic Habits</h5>
                                    <!-- Product price-->
                                    Rp.108.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="{{url('/detail')}}">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                          
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/berani tidak disukai.jpg" alt="Berani Tidak Disukai" />
                            <!-- Product details-->
                            <div class="card-body p-0">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Berani Tidak Disukai</h5>
                                    
                                    <!-- Product price-->
                            
                                    Rp.98.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/filosofi teras.jpg" alt="filosofi teras" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Filosofi Teras</h5>
                                    <!-- Product price-->

                                    Rp.98.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                 
                    <div class="col mb-5">
                        <div class="card h-100">
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/aksi_massaa.jpg" alt="aksi massaaa" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Aksi Massa</h5>
                                    <!-- Product price-->

                                    Rp.50.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100">
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/Educated.jpg" alt="Educated" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Educated</h5>
                                    <!-- Product price-->

                                    Rp.128.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/sebuah seni berpikir bodoh amat.jpg" alt="sebuah seni berpikir bodoh amat" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Sebuah Seni Berpikir Bodo Amat</h5>
                                    <!-- Product price-->

                                    Rp.118.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/sejarah dunia yg disembunyikan.jpg" alt="sejarah dunia yg disembunyikan" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Sejarah Dunia yang Disembunyikan</h5>
                                    <!-- Product price-->

                                    Rp.135.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="{{url('/public')}}/images/The-Alchemist.jpg" alt="The-Alchemist" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">The Alchemist</h5>
                                    <!-- Product price-->

                                    Rp.119.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View Details</a></div>
                            </div>
                        </div>
                    </div>
                    
                   
                   
                    
                </div>
            </div> 
        </section>
        
        <!-- Footer-->
        @include('footer')
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="{{url('/public')}}/js/scripts.js"></script>
    </body>
</html>