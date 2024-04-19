package ie.atu;

import java.sql.*;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Scanner;

public class Computing_And_Gaming extends AllSearch implements Categories{

    public void search() {


        ArrayList<String> name = new ArrayList<String>();

    String selectSQL = "SELECT name " + "from computingandgaming";

        try (
    Connection connection = DriverManager.getConnection(url, username, password);
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(selectSQL)) {

        while (resultSet.next()) {
            String prodName = resultSet.getString("name");

            name.add(prodName);
        }
    } catch (
    SQLException e) {
        e.printStackTrace();
    }
        for (int i = 0; i < name.size(); i++) {
        System.out.println(name.get(i));
    }


}

    public void subCat(){

        Scanner scanner = new Scanner(System.in);
        String newCat;
        do{
            System.out.println("Please choose a sub category:\nLaptop\nMonitor\nComputer\nTablet\nGaming");
            newCat = scanner.nextLine();
        }while(!Objects.equals(newCat, "Laptop") &&!Objects.equals(newCat, "Monitor")&&!Objects.equals(newCat, "Computer")&&!Objects.equals(newCat, "Tablet")&&!Objects.equals(newCat,"Gaming"));

        String selectSQL = "SELECT name " + "from computingandgaming where category ='"+newCat+"'";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL)) {

            while (resultSet.next()) {
                String prodName = resultSet.getString("name");
                System.out.println(prodName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
