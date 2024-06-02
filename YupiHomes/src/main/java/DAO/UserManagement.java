/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.ConnectDatabase;
import model.User;

/**
 *
 * @author Andrea
 */
public class UserManagement {
    private Connection connection;
    private static final String INSERT_USER_QUERY = "INSERT INTO user (name, lastname, mail, id, password, properties) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_USER_BY_EMAIL_QUERY = "SELECT * FROM user WHERE mail = ?";
    private static final String SELECT_USER_BY_ID_QUERY = "SELECT * FROM user WHERE id = ?";
    
    public String getUserFullName(int userId) throws SQLException {
        String fullName = null;
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = ConnectDatabase.getConnection();
            String query = "SELECT name, lastname FROM user WHERE id = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, userId);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String firstName = resultSet.getString("name");
                String lastName = resultSet.getString("lastname");
                fullName = firstName + " " + lastName;
            }
        } finally {
            // Close resources
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }

        return fullName;
    }
    
    public UserManagement(Connection connection) {
        this.connection = connection;
    }

    public void addUser(User user) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement(INSERT_USER_QUERY)) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getLastname());
            statement.setString(3, user.getMail());
            statement.setInt(4, user.getId());
            statement.setString(5, user.getPassword());
            statement.setInt(6, user.getProperties());
            statement.executeUpdate();
        }
    }

    public void closeConnection() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }
    
        public User getUserByEmailAndPassword(String mail, String password) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        User user = null;

        try {
            connection = ConnectDatabase.getConnection();
            String query = "SELECT * FROM user WHERE mail = ? AND password = ?";
            statement = connection.prepareStatement(query);
            statement.setString(1, mail);
            statement.setString(2, password);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                user = new User();
                user.setName(resultSet.getString("name"));
                user.setLastname(resultSet.getString("lastname"));
                user.setMail(resultSet.getString("mail"));
                user.setId(resultSet.getInt("id"));
                user.setPassword(resultSet.getString("password"));
                user.setProperties(resultSet.getInt("properties"));
            }
        } finally {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }

        return user;
    }
        
    public User getUserById(int userId) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        User user = null;

        try {
            connection = ConnectDatabase.getConnection();
            String query = "SELECT * FROM user WHERE id = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, userId);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Construye el objeto User a partir de los datos en el ResultSet
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setLastname(resultSet.getString("lastname"));
                user.setMail(resultSet.getString("mail"));
                user.setPassword(resultSet.getString("password"));
                user.setProperties(resultSet.getInt("properties"));
                // Otros campos del usuario según la estructura de tu tabla
            }
        } finally {
            // Cerrar recursos
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }

        return user;
    }
        
    public boolean isEmailRegistered(String mail) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement(SELECT_USER_BY_EMAIL_QUERY)) {
            statement.setString(1, mail);
            try (ResultSet resultSet = statement.executeQuery()) {
                return resultSet.next();
            }
        }
    }
    
    public boolean isIdRegistered(int id) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement(SELECT_USER_BY_ID_QUERY)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                return resultSet.next();
            }
        }
    }
    
    public void increaseUserPropertyCount(int userId) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = ConnectDatabase.getConnection();
            String query = "UPDATE user SET properties = properties + 1 WHERE id = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, userId);
            statement.executeUpdate();
        } finally {
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    }

    public boolean decreaseUserPropertyCount(int userId) throws SQLException {
        String query = "UPDATE user SET properties = properties - 1 WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, userId);
            return stmt.executeUpdate() > 0;
        }
    }
}
