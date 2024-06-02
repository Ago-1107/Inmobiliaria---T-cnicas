<%-- 
    Document   : profile
    Created on : 22 may 2024, 19:25:10
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Yupi Homes - Profile</title>
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
                        <li class="nav-item"><a class="nav-link" href="housing.jsp"> Housing </a></li>
                        <li class="nav-item"><a class="nav-link" href="#profile"> Profile </a></li>
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

        <!-- Profile -->
        <div id="profile">
            <div class="container-fluid p-4">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <%
                        // Verificar si la sesión del usuario está activa
                        if (session != null && session.getAttribute("user") != null) {
                            // La sesión del usuario está activa y el objeto User está presente en la sesión
                            User user = (User) session.getAttribute("user");
                        %>

                        <!-- Código HTML para mostrar el perfil del usuario -->

                        <h2 class="text-center">User Profile</h2>
                        <hr class="divider" />
                        <div class="profile-box mb-4">
                            <br> <h3>User Information</h3>
                            <p><strong>Name:</strong> <%= user.getName() %></p>
                            <p><strong>Lastname:</strong> <%= user.getLastname() %></p>
                            <p><strong>Email:</strong> <%= user.getMail() %></p>
                            <p><strong>User ID:</strong> <%= user.getId() %></p>
                        </div>
                        <div class="profile-box">
                            <br> <h3>Properties</h3>
                            <p><strong>Number of Properties:</strong> <%= user.getProperties() %></p>
                        </div>
                        <div class="text-center mt-4">
                            <br> <a href="index.jsp" class="btn btn-primary btn-xl">Log Out</a>
                        </div>

                        <%
                        } else {
                            // La sesión del usuario no está activa o el objeto User no está presente en la sesión
                            // Redirigir al usuario a la página de inicio de sesión
                            response.sendRedirect("index.jsp");
                        }
                        %>
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

