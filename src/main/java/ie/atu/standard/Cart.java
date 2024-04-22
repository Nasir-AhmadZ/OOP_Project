package ie.atu.standard;

import java.sql.*;
import java.util.*;

public class Cart {
    public String url;
    public String username;
    public String password;

    Scanner scanner = new Scanner(System.in);
    ArrayList<String> finalItem = new ArrayList<String>();

    public Cart(){
        url = "jdbc:mysql://localhost:3306/electronicstore";
        username = "root";
        password = "password";


    }
    ArrayList<String> cartItems = new ArrayList<String>();
    public String addToCart() {
        ArrayList<String> items = new ArrayList<String>();//items = all products, cartItems = items in cart

        String itemName,cont;
        String selectSQL = "SELECT name " + "from products";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(selectSQL)) {

            while (resultSet.next()) {
                String prodName = resultSet.getString("name");

                items.add(prodName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        do{
            System.out.println("Do you want to add an item to cart(Y), continue searching(N) or Head to Cart(C)?");
            cont = scanner.nextLine();

        }while(Objects.equals(cont,"Y")&&Objects.equals(cont,"N")&&Objects.equals(cont,"C"));
        if(Objects.equals(cont,"Y"))//add to cart
        {

            int repeat = 0;
            do {
                System.out.println("Please enter the name of the item that you want to add to the cart");
                itemName = scanner.nextLine();
                for (int i = 0; i < items.size(); i++) {
                    if (Objects.equals(itemName, items.get(i))) {
                        repeat = 1;
                    }
                }
            } while (repeat != 1);

            cartItems.add(itemName);
            System.out.println("You have added "+itemName+" in to the cart");

            do{
                System.out.println("Do you want to continue shopping(N) or head to cart(C)");
                cont = scanner.nextLine();

            }while(Objects.equals(cont,"C")&&Objects.equals(cont,"N"));
            if(Objects.equals(cont,"C"))
            {
                return "C";//Head to cart
            }
            if(Objects.equals(cont,"N"))
            {
                return "N";//continue shopping
            }

        }
        if(Objects.equals(cont,"N"))
        {
            return "N";//continue shopping
        }
        else{
            return "C";//head to cart
        }
    }


    public void headToCart(){
        int price = 0;

        System.out.println("The items in your cart are:");


        for(int i =0 ; i<cartItems.size();i++)
        {
            System.out.println(cartItems.get(i));
            String selectSQL = "SELECT price " + "from products where name = '"+cartItems.get(i)+"'";

            try (Connection connection = DriverManager.getConnection(url, username, password);
                 Statement statement = connection.createStatement();
                 ResultSet resultSet = statement.executeQuery(selectSQL)) {

                while (resultSet.next()) {
                    int prod = resultSet.getInt("price");
                    price+=prod;


                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        System.out.println("The price of these items is: €"+price);

    }



}