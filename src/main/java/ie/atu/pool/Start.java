package ie.atu.pool;

import java.util.Scanner;

public class Start {
    public static void main(String args[]) {
        // display a welcome message
        System.out.println("--------------------><---------------------");
        System.out.println("              Electronic Store               ");
        System.out.println("--------------------><---------------------");
        System.out.println();


        // perform 1 or more selections
        Scanner sc = new Scanner(System.in);
        String choice = "y";
        while (choice.equalsIgnoreCase("y")) {
            System.out.print("Choose an section 1-5\n: ");
            System.out.print("Products\n: ");
            System.out.print("Computor And Gaming\n ");
            System.out.print("Home Appliances\n: ");
            System.out.print("Small Appliances\n: ");
            System.out.print("Tv and Audio\n: ");
            String StorageCode = sc.nextLine();  // read the book code

            Storage yourBook = Product.getBook(StorageCode);

            // display the output
            System.out.println();
            if (yourBook != null) {
                System.out.println("" + yourBook.toString());
                System.out.println(""  + yourBook.getPriceFormatted());
            } else {
                System.out.println("Not Available, try again.");
            }

            System.out.println();
            System.out.println("product count: " + Storage.getCount() + "\n");

            System.out.print("Continue? (y/n): ");
            choice = sc.nextLine();
            System.out.println();
        }
        sc.close();
    }
}


