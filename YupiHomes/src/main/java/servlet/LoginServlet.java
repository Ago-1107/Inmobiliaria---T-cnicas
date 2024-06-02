/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

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

@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String mail = request.getParameter("mail");
        String password = request.getParameter("password");

        Connection connection = null;
        try {
            connection = ConnectDatabase.getConnection();
            UserManagement userManagement = new UserManagement(connection);
            User user = userManagement.getUserByEmailAndPassword(mail, password);
            if (user != null) {
                // Autenticación exitosa
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("housing.jsp");
            } else {
                // Autenticación fallida
                out.println("<html><body>");
                out.println("<script>");
                out.println("alert('Incorrect username or password. Please try again.');");
                out.println("window.history.back();");
                out.println("</script>");
                out.println("</body></html>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Manejo de errores de base de datos
        } finally {
            try {
                if (connection != null && !connection.isClosed()) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
