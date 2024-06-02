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
import model.Property;

/**
 *
 * @author Andrea
 */
public class PropertyManagement {
    private Connection connection;
    private static final String SELECT_PROPERTY_BY_ID_QUERY = "SELECT * FROM property WHERE id = ?";
    private static final String UPDATE_PROPERTY_QUERY = "UPDATE property SET state = ?, owner = ? WHERE id = ?";

    public PropertyManagement(Connection connection) {
        this.connection = connection;
    }

    public Property getPropertyById(int id) throws SQLException {
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Property property = null;

        try {
            statement = connection.prepareStatement(SELECT_PROPERTY_BY_ID_QUERY);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                property = new Property(
                    resultSet.getInt("id"),
                    resultSet.getString("category"),
                    resultSet.getString("location"),
                    resultSet.getString("name"),
                    resultSet.getInt("bathroom"),
                    resultSet.getInt("bedroom"),
                    resultSet.getString("state"),
                    resultSet.getInt("price"),
                    resultSet.getString("owner"),
                    resultSet.getInt("ownerId"),
                    resultSet.getString("images")
                );
            }
        } finally {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
        }

        return property;
    }

    public boolean buyProperty(int propertyId, int buyerId) throws SQLException {
        UserManagement userManagement = new UserManagement(connection);
        String buyerFullName = userManagement.getUserFullName(buyerId); // Get buyer's full name
        String query = "UPDATE property SET state = 'Sold', owner = ?, ownerId = ? WHERE id = ? AND state <> 'Sold'";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, buyerFullName);
            stmt.setInt(2, buyerId);
            stmt.setInt(3, propertyId);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // True if the property state was successfully updated
        }
    }

    public void updatePropertyState(int propertyId, String state) throws SQLException {
        String query = "UPDATE property SET state = ? WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, state);
            stmt.setInt(2, propertyId);
            stmt.executeUpdate();
        }
    }
    
    public boolean updatePropertyOwner(int propertyId, int newOwnerId) throws SQLException {
        String query = "UPDATE property SET ownerId = ? WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, newOwnerId);
            stmt.setInt(2, propertyId);
            return stmt.executeUpdate() > 0;
        }
    }

    public void closeConnection() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }
}