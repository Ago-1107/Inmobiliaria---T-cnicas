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

@WebServlet("/signupservlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String mail = request.getParameter("mail");
        int id = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");

        Connection connection = null;
        try {
            connection = ConnectDatabase.getConnection();
            UserManagement userManagement = new UserManagement(connection);

            // Verificar si el correo o id ya están registrados.
            if (userManagement.isEmailRegistered(mail)) {
                showAlertAndGoBack(out, "The email address is already registered.");
                return;
            }
            if (userManagement.isIdRegistered(id)) {
                showAlertAndGoBack(out, "The ID is already registered.");
                return;
            }
            

            // Si el correo electrónico no está registrado, agregar el usuario
            User newUser = new User(name, lastname, mail, id, password);
            userManagement.addUser(newUser);
            userManagement.closeConnection();

            // Crear una sesión para el nuevo usuario
            HttpSession session = request.getSession();
            session.setAttribute("user", newUser);
            
            // Mensaje de éxito
            showAlertAndRedirect(out, "Registration successful. The user has been registered successfully.", "housing.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // Mensaje de error
            showAlertAndGoBack(out, "Registration error. An error occurred while trying to register the user.");
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

    private void showAlertAndGoBack(PrintWriter out, String message) {
        out.println("<html><body>");
        out.println("<script>");
        out.println("alert('" + message + "');");
        out.println("window.history.back();");
        out.println("</script>");
        out.println("</body></html>");
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
