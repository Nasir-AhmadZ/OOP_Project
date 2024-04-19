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

        Login Client = new Login();
        Client.getUserInput();
        if (Client.signed()!=1){
            System.out.println("User not in the Database");
            System.out.println("Please register");
            Client.register();
        }

    }
}