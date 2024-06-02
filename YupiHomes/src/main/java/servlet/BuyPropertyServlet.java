/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import DAO.PropertyManagement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import model.ConnectDatabase;
import model.User;
import DAO.UserManagement;
import model.Property;

/**
 *
 * @author Andrea
 */
@WebServlet("/buyProperty")
public class BuyPropertyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        
        int propertyId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        boolean success = false;

        try {
            Connection connection = ConnectDatabase.getConnection();
            PropertyManagement propertyManagement = new PropertyManagement(connection);
            UserManagement userManagement = new UserManagement(connection);
            Property property = propertyManagement.getPropertyById(propertyId);
            String ownerFullName = userManagement.getUserFullName(property.getOwnerId());
            request.getSession().setAttribute("ownerFullName", ownerFullName);
            success = propertyManagement.buyProperty(propertyId, user.getId());
            // Incrementa el número de propiedades del usuario
            if (success) {
                userManagement.increaseUserPropertyCount(user.getId());
                user.setProperties(user.getProperties() + 1);
                session.setAttribute("user", user);
            }
            
            propertyManagement.closeConnection();
        } catch (Exception e) {
            e.printStackTrace();
            // Show error alert and redirect back to property details page
            showAlertAndRedirect(out, "Error: Purchase failed. Please try again later.", "details.jsp?id=" + propertyId);
            return;
        }

        if (success) {
            // Show success alert and redirect back to property details page
            showAlertAndRedirect(out, "Purchase successful!", "details.jsp?id=" + propertyId);
        } else {
            // Show error alert and redirect back to property details page
            showAlertAndRedirect(out, "Error: Purchase failed. Please try again later.", "details.jsp?id=" + propertyId);
        }
    }

    private void showAlertAndRedirect(PrintWriter out, String message, String redirectURL) {
        out.println("<html><body>");
        out.println("<script>");
        out.println("alert('" + message + "');");
        out.println("window.location.href='" + redirectURL + "';");
        out.println("</script>");
        out.println("</body></html>");
    }
}