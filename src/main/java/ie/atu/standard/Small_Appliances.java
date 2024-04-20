package ie.atu.standard;

import java.sql.*;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Scanner;

public class Small_Appliances extends Cart implements Categories{
    public void search() {


        ArrayList<String> name = new ArrayList<String>();

        String selectSQL = "SELECT name " + "from smallappliances";

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
            System.out.println("Please choose a sub category:\nHeating & Cooling\nCooking\nVacuum Cleaner\nCoffee Machine\nKettle & Toaster");
            newCat = scanner.nextLine();
        }while(!Objects.equals(newCat, "Heating & Cooling") &&!Objects.equals(newCat, "Cooking")&&!Objects.equals(newCat, "Vacuum Cleaner")&&!Objects.equals(newCat, "Coffee Machine")&&!Objects.equals(newCat,"Kettle & Toaster"));

        String selectSQL = "SELECT name " + "from smallappliances where category ='"+newCat+"'";

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
