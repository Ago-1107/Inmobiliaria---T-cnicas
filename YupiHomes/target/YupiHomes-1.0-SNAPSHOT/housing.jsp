<%-- 
    Document   : housing
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
        <title>Yupi Homes - Start</title>
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
                        <li class="nav-item"><a class="nav-link" href="#housing"> Housing </a></li>
                        <li class="nav-item"><a class="nav-link" href="profile.jsp"> Profile </a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <!-- Header-->
        <section class="page-section2 bg-dark" id="header">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center"></div>
                </div>
            </div>
        </section>  
               
        <!-- Portfolio-->
        <div id="housing">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box2" id="portfolio-1" href="details.jsp?id=100">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/1.png" alt="..." />
                            <div class="portfolio-box2-caption">
                                <div class="project-category text-white-50">Farm</div>
                                <div class="project-name">Avenida del Viejo Molino, 3</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box2" id="portfolio-2" href="details.jsp?id=200">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/2.png" alt="..." />
                            <div class="portfolio-box2-caption">
                                <div class="project-category text-white-50">House</div>
                                <div class="project-name">Villa Verano</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box2" id="portfolio-3" href="details.jsp?id=300">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/3.png" alt="..." />
                            <div class="portfolio-box2-caption">
                                <div class="project-category text-white-50">Penthouse</div>
                                <div class="project-name">Ático de Torre Torendi, 1</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box2" id="portfolio-4" href="details.jsp?id=400">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/4.png" alt="..." />
                            <div class="portfolio-box2-caption">
                                <div class="project-category text-white-50">Apartment</div>
                                <div class="project-name">Hogar de Hakim, 122</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box2" id="portfolio-5" href="details.jsp?id=500">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/5.png" alt="..." />
                            <div class="portfolio-box2-caption">
                                <div class="project-category text-white-50">Château</div>
                                <div class="project-name">Château Cúspide</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box2" id="portfolio-6" href="details.jsp?id=600">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/6.png" alt="..." />
                            <div class="portfolio-box2-caption ">
                                <div class="project-category text-white-50">House</div>
                                <div class="project-name">Cenagal Consagrado</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
             
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

