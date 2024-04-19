package ie.atu;

import java.sql.*;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Scanner;

public class Home_Appliances extends Cart implements Categories{
    public void search() {


        ArrayList<String> name = new ArrayList<String>();

        String selectSQL = "SELECT name " + "from homeappliances";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL)) {

            while (resultSet.next()) {
                String prodName = resultSet.getString("name");

                name.add(prodName);
            }
        } catch (SQLException e) {
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
            System.out.println("Please choose a sub category:\nWashing Machine\nFreezer\nDishwasher\nCooker\nTumble Dryer\nFridge");
            newCat = scanner.nextLine();
        }while(!Objects.equals(newCat, "Washing Machine") &&!Objects.equals(newCat, "Freezer")&&!Objects.equals(newCat, "Dishwasher")&&!Objects.equals(newCat, "Cooker")&&!Objects.equals(newCat,"Tumble Dryer")&&!Objects.equals(newCat,"Fridge"));

        String selectSQL = "SELECT name " + "from homeappliances where category ='"+newCat+"'";

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
