package ie.atu;
import java.sql.*;
import java.util.Objects;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws SQLException {
        Scanner scanner = new Scanner(System.in);
        int ch;
        String search,subC;

        Login Client = new Login();

        System.out.println("--------------------><---------------------");
        System.out.println("              Electronic Store               ");
        System.out.println("--------------------><---------------------");
        System.out.println();

        Client.getUserInput();
        if (Client.signed()!=1){
            System.out.println("User not in the Database");
            System.out.println("Please register");
            Client.register();
        }


        search = "scanner";
        do
        {
            System.out.println("What do you want to buy. Please choose a category");
            System.out.println("Computing and Gaming\nHome Appliances\nTv and Audio\nSmall Appliances\nAll Products");
            search = scanner.nextLine();

        }while(!Objects.equals(search, "Tv and Audio")&&!Objects.equals(search,"Small Appliances")&&!Objects.equals(search,"Home Appliances")&&!Objects.equals(search,"Computing and Gaming"));

        System.out.println("Search with sub category (Y/N): ");

        subC=scanner.nextLine();
        Tv_And_Audio tv = new Tv_And_Audio();
        Small_Appliances small = new Small_Appliances();
        Home_Appliances home = new Home_Appliances();
        Computing_And_Gaming comp = new Computing_And_Gaming();

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

            case "Small Appliances":
                if(Objects.equals(subC,"Y"))
                {
                    small.subCat();
                    break;
                }
                small.search();
                break;

            case "Computing and Gaming":
                if (Objects.equals(subC,"Y"))
                {
                    comp.subCat();
                    break;
                }
                comp.search();
                break;

            default: break;
        }




    }
}