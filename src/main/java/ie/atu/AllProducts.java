package ie.atu;

import java.sql.*;

public class AllProducts {
    public String url;
    public String username;
    public String password;

    public AllProducts() {
        url = "jdbc:mysql://localhost:3306/electronicstore";
        username = "root";
        password = "password";
    }

    public void brand()
    {
        String selectSQL = "SELECT brand " + "from products";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL)) {

            while (resultSet.next()) {
                String prodCat = resultSet.getString("brand");
                System.out.println(prodCat);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}