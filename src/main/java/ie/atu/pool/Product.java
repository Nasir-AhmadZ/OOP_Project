package ie.atu.pool;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Product {
    public static void main(String[] args) {
        String selectSQL = "SELECT * FROM products";

        try (Connection connection = DatabaseInfo.getConnection("jdbc:mysql://localhost:3306/electronicstore", "root", "password!");
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL)) {

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String brand = resultSet.getString("brand");
                String name = resultSet.getString("name");
                int price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                String category = resultSet.getString("category");

                System.out.println("ID: " + id + ", Brand: " + brand + ", Name: " + name + ", Price: " + price + ", Quantity: " + quantity + ", Category: " + category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Storage getBook(String bookCode) {
        return null;
    }
}
