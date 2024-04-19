package ie.atu;

import java.sql.*;
import java.util.*;

public class AllSearch {
    public String url;
    public String username;
    public String password;

    Scanner scanner = new Scanner(System.in);

    public AllSearch() {
        url = "jdbc:mysql://localhost:3306/electronicstore";
        username = "root";
        password = "password";
    }


}