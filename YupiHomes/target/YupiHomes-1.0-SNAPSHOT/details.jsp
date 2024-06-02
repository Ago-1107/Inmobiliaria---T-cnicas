<%-- 
    Document   : details
    Created on : 22 May 2024, 19:25:10
    Author     : Andrea
--%>

<%@ page import="model.User" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="model.Property" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DAO.PropertyManagement" %>
<%@ page import="model.ConnectDatabase" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User user = (User) session.getAttribute("user");
    
    int propertyId = Integer.parseInt(request.getParameter("id"));
    Property property = null;
    List<String> propertyImages = new ArrayList<>(); // List to store image paths

    try {
        Connection connection = ConnectDatabase.getConnection();
        PropertyManagement propertyManagement = new PropertyManagement(connection);
        property = propertyManagement.getPropertyById(propertyId);
        propertyManagement.closeConnection();
        
        // Getting property images paths
        String[] imagePaths = property.getImages().split(",");
        // Building full paths for images
        for (String imagePath : imagePaths) {
            // If images are stored in a web folder, 
            // make sure to have the correct base path to access them
            String imagePathInWebContext = "assets/img/portfolio/" + imagePath;
            propertyImages.add(imagePathInWebContext);
        }
    } catch (Exception e) {
        e.printStackTrace();
}
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Yupi Homes - Details</title>
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
        
        
        <!-- Details -->
        <div id="details">
            <div class="container-fluid p-4">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <% if (property != null) { %>
                        <h2 class="text-center">Property Details</h2>
                        <hr class="divider" />
                        <div class="profile-box mb-4">
                            <br>
                            <h3>Property Information</h3>
                            <p><strong>Name:</strong> <%= property.getName() %></p>
                            <p><strong>Location:</strong> <%= property.getLocation() %></p>
                            <p><strong>Number of Bathrooms:</strong> <%= property.getBathroom() %></p>
                            <p><strong>Number of Bedrooms:</strong> <%= property.getBedroom() %></p>
                            <p><strong>State:</strong> <%= property.getState() %></p>
                            <p><strong>Price:</strong> <%= property.getPrice() %> $ (Simoleones)</p>
                            <p><strong>Owner:</strong> 
                                <% 
                                    if (property.getOwnerId() == 0) {
                                        out.println("No owner");
                                    } else if (property.getOwner() != null) {
                                        out.println(property.getOwner());
                                    } else {
                                        out.println("Unknown owner");
                                    }
                                %>
                            </p>                        
                        </div>
                        <div class="text-end mt-4">
                            <% if (!property.getState().equals("Sold")) { %>
                                <a href="buyProperty?id=<%= property.getId() %>" class="btn btn-primary btn-xl buy-button">Buy</a>
                            <% } %>               
                        </div>
                        <div>
                            <% if (user != null && user.getId() == property.getOwnerId() && property.getState().equals("Sold")) { %>
                                <a href="sellProperty?id=<%= property.getId() %>" class="btn btn-primary btn-xl sell-button">Sell</a>
                            <% } %>
                        </div>
                        <!-- Carousel -->
                        <div id="propertyCarousel" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <% for (int i = 0; i < propertyImages.size(); i++) { %>
                                <div class="carousel-item <%= (i == 0) ? "active" : "" %>">
                                    <img src="<%= propertyImages.get(i) %>" class="d-block w-100" alt="Image <%= i + 1 %>">
                                </div>
                                <% } %>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#propertyCarousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#propertyCarousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                        <!-- End Carousel -->
                        <div class="text-center mt-4">
                            <a href="housing.jsp" class="btn btn-primary btn-xl">Back to Housing</a>
                        </div>
                        <% } else { %>
                        <p>Property not found.</p>
                        <% } %>
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
