<%-- 
    Document   : index
    Created on : 22 may 2024, 19:25:10
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Yupi Homes - Main</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    
    <body id="page-top">
        
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">Yupi homes</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#about"> About us </a></li>
                        <li class="nav-item"><a class="nav-link" href="#services"> Services </a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio"> Housing </a></li>
                        <li class="nav-item"><a class="nav-link" href="#login"> Log in </a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">Your Trusted Real Estate Partner</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5"> Yupi Homes helps you find your dream home in the perfect location!
                            Whether you're buying, selling, or renting, our experienced team is here to guide you every step of the way.</p>
                        <a class="btn btn-primary btn-xl" href="#about">Find Out More</a>
                    </div>
                </div>
            </div>
        </header>
        
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        
                        <h2 class="text-white mt-0"> Our Story </h2>
                        <p class="text-white-75 mb-4">Founded in 2014, Yupi Homes began with a simple idea: to help people find their perfect home.
                            Starting as a small startup, we have grown into a trusted real estate agency known for our dedication to client satisfaction
                            and innovative solutions. Our passion for exceptional home design and personalized service has driven us from the very beginning.</p>
                        
                        <hr class="divider divider-light" />
                        
                        <h2 class="text-white mt-0"> Our Mission </h2>
                        <p class="text-white-75 mb-4">At Yupi Homes, our mission is to provide exceptional real estate services that help our clients
                            find their dream homes. We strive to make every step of the process smooth and enjoyable, offering personalized solutions
                            and expert guidance. Our goal is to exceed our clients' expectations and build lasting relationships based on trust and excellence.</p>
                    </div>
                </div>
            </div>
        </section>           
        
        <!-- Services-->
        <section class="page-section bg-dark text-white" id="services">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">At Your Service</h2>
                <br><hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Purchase</h3>
                            <p class="text-muted mb-0">Unlock the door to your dream home with our seamless buying process.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Sale</h3>
                            <p class="text-muted mb-0">Maximize your property's value with our expert sales team.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Rental</h3>
                            <p class="text-muted mb-0">Find the perfect rental property tailored to your needs and lifestyle.</p>
                        </div>
                    </div>
                </div> <br><br>
                <div class="text-center">
                    <a class="btn btn-light btn-xl" href="#login">Join us!</a>
                </div>
            </div>
        </section>
        
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" id="portfolio-1">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/1.png" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Farm</div>
                                <div class="project-name">Avenida del Viejo Molino, 3</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" id="portfolio-2">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/2.png" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">House</div>
                                <div class="project-name">Villa Verano</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" id="portfolio-3">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/3.png" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Penthouse</div>
                                <div class="project-name">Ático de Torre Torendi, 1</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" id="portfolio-4">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/4.png" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Apartment</div>
                                <div class="project-name">Hogar de Hakim, 122</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" id="portfolio-5">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/5.png" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Chateau</div>
                                <div class="project-name">Château Cúspide</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" id="portfolio-6">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/6.png" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">House</div>
                                <div class="project-name">Cenagal Consagrado</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Sign up / Log in -->
        <section class="page-section" id="login">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">Ready to start your journey with us? <br>
                            Join us to get started today!</p>                    
                    <!-- Grupo de botones -->
                        <div class="d-flex justify-content-center">
                            <a id="signupNavButton" class="btn btn-primary btn-xl me-2" onclick="showSignupForm()">Sign Up</a>
                            <a id="loginNavButton" class="btn btn-primary btn-xl me-2" onclick="showLoginForm()">Log In</a>
                        </div>        
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6"> <br> <br> 
                        <!-- Sign up Form -->
                        <form id="signupForm" action="/YupiHomes/signupservlet" method="post" data-sb-form-api-token="API_TOKEN"  style="display: none;">
                            <!-- Name input -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" name="name" type="text" required>
                                <label for="name">Name</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">Your name is required.</div>
                            </div>
                            <!-- Last name input -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="lastname" name="lastname" type="text" required>
                                <label for="lastname">Last Name</label>
                                <div class="invalid-feedback" data-sb-feedback="lastname:required">Your last name is required.</div>
                            </div>
                            <!-- Email input -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="signupEmail" name="mail" type="email" required>
                                <label for="signupEmail">Email</label>
                                <div class="invalid-feedback" data-sb-feedback="signupEmail:required">Your email is required.</div>
                            </div>
                            <!-- ID input -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="id" name="id" type="text" required>
                                <label for="id">ID</label>
                                <div class="invalid-feedback" data-sb-feedback="id:required">Your ID is required.</div>
                            </div>
                            <!-- Password input -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="signupPassword" name="password" type="password" required>
                                <label for="signupPassword">Password</label>
                                <div class="invalid-feedback" data-sb-feedback="signupPassword:required">Your password is required.</div>
                            </div>
                            <!-- Submit Button for Sign up -->
                            <div class="d-grid">
                                <button class="btn btn-primary btn-xl" id="signupButton" type="submit">Submit</button>
                            </div>
                        </form>
                        <!-- Login Form -->
                        <form id="loginForm" action="/YupiHomes/loginservlet" method="post" data-sb-form-api-token="API_TOKEN" style="display: none;">
                            <!-- Email input for Login -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="loginEmail" name="mail" type="email" required>
                                <label for="loginEmail">Email</label>
                                <div class="invalid-feedback" data-sb-feedback="loginEmail:required">Your email is required.</div>
                            </div>
                            <!-- Password input for Login -->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="loginPassword" name="password" type="password" required>
                                <label for="loginPassword">Password</label>
                                <div class="invalid-feedback" data-sb-feedback="loginPassword:required">Your password is required.</div>
                            </div>
                            <!-- Submit Button for Login -->
                            <div class="d-grid">
                                <button class="btn btn-primary btn-xl" id="loginButton" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section> 
        
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2024 - Yupi Homes</div></div>
        </footer>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

