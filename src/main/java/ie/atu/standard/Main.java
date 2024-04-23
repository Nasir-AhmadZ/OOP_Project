package ie.atu.standard;
import java.sql.*;
import java.util.Objects;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws SQLException {
        Scanner scanner = new Scanner(System.in);
        int ch;
        String search,subC,cartOpt="Y";
        Tv_And_Audio tv = new Tv_And_Audio();
        Small_Appliances small = new Small_Appliances();
        Home_Appliances home = new Home_Appliances();
        Computing_And_Gaming comp = new Computing_And_Gaming();
        AllProducts all = new AllProducts();
        Login Client = new Login();
        Cart cart = new Cart();
        int sign=0;

        System.out.println("--------------------><---------------------");
        System.out.println("              Electron City                ");
        System.out.println("--------------------><---------------------");
        System.out.println();



        Client.getUserInput();
        sign= Client.signed();
        if (sign==0||sign==2){
            Client.register();
        }




        do{
            do
            {
                System.out.println("What do you want to buy. Please choose a category");
                System.out.println("Computing and Gaming\nHome Appliances\nTv and Audio\nSmall Appliances\nAll Products\nBrand");
                search = scanner.nextLine();

            }while(!Objects.equals(search, "Tv and Audio")&&!Objects.equals(search,"Small Appliances")&&!Objects.equals(search,"Home Appliances")&&!Objects.equals(search,"Computing and Gaming")&&!Objects.equals(search,"Brand")&&!Objects.equals(search,"All Products"));
            if(!Objects.equals(search,"Brand"))
            {
                System.out.println("Search with sub category (Y/N): ");
            }

            subC=scanner.nextLine();


            switch(search)
            {
                case "Tv and Audio":
                    if(Objects.equals(subC, "Y"))
                    {
                        tv.subCat();
                        cartOpt=cart.addToCart();
                        break;
                    }
                    tv.search();
                    cartOpt=cart.addToCart();
                    break;

                case "Small Appliances":
                    if(Objects.equals(subC,"Y"))
                    {
                        small.subCat();
                        cartOpt=cart.addToCart();
                        break;
                    }
                    small.search();
                    cartOpt=cart.addToCart();
                    break;

                case "Home Appliances":
                    if(Objects.equals(subC,"Y"))
                    {
                        home.subCat();
                        cartOpt=cart.addToCart();
                        break;
                    }
                    home.search();
                    cartOpt=cart.addToCart();
                    break;

                case "Computing and Gaming":
                    if (Objects.equals(subC,"Y"))
                    {
                        comp.subCat();
                        cartOpt=cart.addToCart();
                        break;
                    }
                    comp.search();
                    cartOpt=cart.addToCart();
                    break;

                case "Brand":
                    all.brand();
                    cartOpt=cart.addToCart();
                    break;

                case "All Products":
                    if (Objects.equals(subC,"Y"))
                    {
                        all.subCat();
                        cartOpt=cart.addToCart();
                        break;
                    }
                    all.search();
                    cartOpt=cart.addToCart();
                    break;

                default: break;
            }
        }while(Objects.equals(cartOpt,"N"));//continue shopping

        if(Objects.equals(cartOpt,"C"))
        {
            System.out.println("Heading to cart");
            cart.headToCart();
        }





    }
}