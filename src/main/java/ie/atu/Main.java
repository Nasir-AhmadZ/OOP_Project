package ie.atu;
import java.sql.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:mysql://localhost:3306/electronicstore";
        String username = "root";
        String password = "password";
        Scanner scanner = new Scanner(System.in);

        int ch;
        String search;

        Login Client = new Login();
        Client.getUserInput();
        if (Client.signed()!=1){
            System.out.println("User not in the Database");
            System.out.println("Please register");
            Client.register();
        }

        System.out.println("What do you want to buy\nPlease choose a method of searching");
        System.out.println("Category, Brand");
        search = scanner.nextLine();

        if (search=="Category" || search=="category" )
        {
            while(search!="Tv and Audio"||search!="Home Appliances"||search!="Small Appliances"||search!="Computing and Gaming"||search!="All Products") {
                System.out.println("Tv and Audio\nHome Appliances\nSmall Appliances\nComputing and Gaming\nAll Products");
                System.out.println("Please enter the name of the category");
                search=scanner.nextLine();
            }
            switch(search)
            {
                case "Tv and Audio":
                    String selectSQL = "SELECT category" +
                            "FROM customer";

                    Connection connection = DriverManager.getConnection(url, username, password);
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(selectSQL);

                    while (resultSet.next()) {
                        String category = resultSet.getString("category");

                        System.out.println("Category: " + category);
                    }
                    System.out.println("Please select one of these subcategories");
                    break;

                default: break;

        }
        }
        else if(search=="Brand"||search=="brand")
        {

        }

    }
}