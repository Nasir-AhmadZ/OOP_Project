package ie.atu;

import java.sql.*;
import java.util.*;

public class AllProducts extends AllSearch{

    public void search(){

    }
    public void brand()
    {
        ArrayList<String> brandName= new ArrayList<String>();
        String selectSQL = "SELECT brand " + "from products";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL)) {

            while (resultSet.next()) {
                String prodCat = resultSet.getString("brand");
                brandName.add(prodCat);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Set<String> set = new HashSet<>(brandName);
        List<String> brandName1 = new ArrayList<>(set);

        for(int i =0; i < brandName1.size();i++)
        {
            System.out.println(brandName1.get(i));
        }

        int repeat = 0;
        String scan;

        do {
            System.out.println("Please enter the name of a brand");
            scan = scanner.nextLine();
            for (int i =0 ; i < brandName1.size();i++)
            {
                if(Objects.equals(scan,brandName1.get(i)))
                {
                    repeat = 1;
                }
            }
        }while(repeat!=1);

        brandName.clear();

        String selectSQL1 = "SELECT name " + "from products where brand = '"+scan+"'";
        try (Connection connection = DriverManager.getConnection(url, username, password);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL1)) {

            while (resultSet.next()) {
                String prodCat = resultSet.getString("name");
                brandName.add(prodCat);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for(int i =0; i < brandName.size();i++)
        {
            System.out.println(brandName.get(i));
        }
    }
}
