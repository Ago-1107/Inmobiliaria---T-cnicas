/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import DAO.PropertyManagement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.ConnectDatabase;
import model.Property;


/**
 *
 * @author Andrea
 */
@WebServlet("/propertyDetails")
public class PropertyDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int propertyId = Integer.parseInt(request.getParameter("id"));
        Property property = null;
        List<String> propertyImages = new ArrayList<>(); // Lista para almacenar las rutas de las imágenes

        try {
            Connection connection = ConnectDatabase.getConnection();
            PropertyManagement propertyManagement = new PropertyManagement(connection);
            property = propertyManagement.getPropertyById(propertyId);
            propertyManagement.closeConnection();
            
            // Obtener las rutas de las imágenes de la propiedad
            String[] imagePaths = property.getImages().split(",");
            for (String imagePath : imagePaths) {
                String imagePathInWebContext = "assets/img/portfolio/" + imagePath;
                propertyImages.add(imagePathInWebContext);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        request.setAttribute("property", property);
        request.setAttribute("propertyImages", propertyImages);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("details.jsp");
        dispatcher.forward(request, response);
    }
}