/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import DAO.PropertyManagement;
import DAO.UserManagement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import model.ConnectDatabase;
import model.User;

/**
 *
 * @author Andrea
 */
@WebServlet("/sellProperty")
public class SellPropertyServlet extends HttpServlet {
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

            propertyManagement.updatePropertyState(propertyId, "For sale");

            success = propertyManagement.updatePropertyOwner(propertyId, 0) && userManagement.decreaseUserPropertyCount(user.getId());

            if (success) {
                user.setProperties(user.getProperties() - 1);
                session.setAttribute("user", user);
            }

            propertyManagement.closeConnection();
            userManagement.closeConnection();
        } catch (SQLException e) {
            e.printStackTrace();
            showAlertAndRedirect(out, "Error: Property could not be sold. Please try again later.", "details.jsp?id=" + propertyId);
            return;
        }

        if (success) {
            showAlertAndRedirect(out, "Property sold successfully!", "details.jsp?id=" + propertyId);
        } else {
            showAlertAndRedirect(out, "Error: Property could not be sold. Please try again later.", "details.jsp?id=" + propertyId);
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