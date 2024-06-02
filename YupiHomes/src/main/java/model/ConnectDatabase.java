/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Andrea
 */
public class ConnectDatabase {
    private static final String URL = "jdbc:mariadb://localhost:3306/yupihomes";
    private static final String USER = "root";
    private static final String PASSWORD = "1025645884";

    public static Connection getConnection() throws SQLException {
        try {
            // Cargar el controlador JDBC de MariaDB
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("Could not load the MariaDB JDBC driver.");
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
