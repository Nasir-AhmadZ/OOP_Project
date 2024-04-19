package ie.atu;
import java.sql.*;
import java.util.Objects;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:mysql://localhost:3306/electronicstore";
        String username = "root";
        String password = "password";
        Scanner scanner = new Scanner(System.in);

        int ch;
        String search,subC;

        Login Client = new Login();
        /*Client.getUserInput();
        if (Client.signed()!=1){
            System.out.println("User not in the Database");
            System.out.println("Please register");
            Client.register();
        }*/


        search = "scanner";
        do
        {
            System.out.println("What do you want to buy\nPlease choose a category");
            System.out.println("Computing and Gaming\nHome Appliance\nTv and Audio\nSmall Appliance\nAll Products");
            search = scanner.nextLine();

        }while(search=="Tv and Audio");

        System.out.println("Search with sub category (Y/N): ");

        subC=scanner.nextLine();
        Tv_And_Audio tv = new Tv_And_Audio();

        switch(search)
        {
            case "Tv and Audio":
                if(Objects.equals(subC, "Y"))
                {
                    tv.subCat();
                    break;
                }
                tv.search();
                break;

            default: break;
        }




    }
}