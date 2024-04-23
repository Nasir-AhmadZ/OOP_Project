package ie.atu;

import ie.atu.standard.Home_Appliances;
import ie.atu.standard.Login;
import java.sql.*;
import java.io.ByteArrayInputStream;
import org.junit.jupiter.api.Test;


public class categoryTest {

    @Test
    public void testRegister() throws SQLException {//Tests if the registration works
        // Prepare test input
        String testInput = "test@example.com\nJohn Doe\n30\n";
        System.setIn(new ByteArrayInputStream(testInput.getBytes()));

        // Set up expectations
        Login login = new Login();
        login.register();


    }

    @Test
    public void testHomeAppliances(){//tests if the subcategories work
        // Prepare test input
        String testInput = "Freezer";
        System.setIn(new ByteArrayInputStream(testInput.getBytes()));

        // Set up expectations
        Home_Appliances home= new Home_Appliances();
        home.subCat();

        String testInput1 = "Washing Machine";
        System.setIn(new ByteArrayInputStream(testInput1.getBytes()));

        Home_Appliances home1= new Home_Appliances();
        home1.subCat();

        // Prepare test input
        String testInput2 = "Dishwasher";
        System.setIn(new ByteArrayInputStream(testInput2.getBytes()));

        // Set up expectations
        Home_Appliances home2= new Home_Appliances();
        home2.subCat();

        String testInput3 = "Cooker";
        System.setIn(new ByteArrayInputStream(testInput3.getBytes()));

        Home_Appliances home3= new Home_Appliances();
        home3.subCat();

        String testInput4 = "Tumble Dryer";
        System.setIn(new ByteArrayInputStream(testInput4.getBytes()));

        Home_Appliances home4= new Home_Appliances();
        home3.subCat();

        String testInput5 = "Cooker";
        System.setIn(new ByteArrayInputStream(testInput5.getBytes()));

        Home_Appliances home5= new Home_Appliances();
        home5.subCat();

    }


}
