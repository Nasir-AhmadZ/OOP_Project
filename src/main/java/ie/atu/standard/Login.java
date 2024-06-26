package ie.atu.standard;
import java.sql.*;
import java.util.Scanner;
public class Login extends Cart {

    private String TempName;
    private int Account;
    public Login(){
        this.TempName = "Igor";
    }

    public String getTempName() {
        return TempName;
    }

    public void setTempName(String tempName) {
        TempName = tempName;
    }

    public void getUserInput()
    {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Please enter your name : ");
        this.TempName=scanner.nextLine();
        do {
            System.out.println("Do you want to Login(1) or Delete your Account(2)");
            this.Account=scanner.nextInt();
        }while(this.Account!=1&&this.Account!=2);


    }

    public int signed()
    {
        int id=0;
        if(this.Account==1)//login
        {
            String selectSQL = "SELECT id, age, email " +
                    "FROM customer where name = '" + this.TempName + "'";

            try (Connection connection = DriverManager.getConnection(url, username, password);
                 Statement statement = connection.createStatement();
                 ResultSet resultSet = statement.executeQuery(selectSQL)) {

                while (resultSet.next()) {
                    id = resultSet.getInt("id");
                    int age = resultSet.getInt("age");
                    String email = resultSet.getString("email");

                    System.out.println("Id: " + id + ", Age: " + age + ", Email: " + email);
                    System.out.println("Successfully Logged in");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if(id!=0)
            {
                return 1;
            }
            else {
                System.out.println("User not in the Database");
                System.out.println("Please register");
                return 0;
            }
        }
        else//delete account
        {

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(url, username, password);

                PreparedStatement st = connection.prepareStatement("DELETE " +
                        "FROM customer where name = '" + this.TempName + "'");
                st.executeUpdate();
                System.out.println("The Account has successfully been deleted.");
            } catch(Exception e) {
                System.out.println("The Account failed to delete");
                System.out.println(e);
            }
            return 2;
        }

    }

    public short register()
            throws SQLException {
        Scanner scanner = new Scanner(System.in);
        String tempName, tempEmail;
        int tempAge;
        System.out.println("This is the registration. Please make an account to proceed");
        System.out.println("Please enter your email: ");
        tempEmail = scanner.nextLine();
        System.out.println("Please enter your name: ");
        tempName = scanner.nextLine();
        System.out.println("Please enter your age: ");
        tempAge = scanner.nextInt();

        // Connect to the database
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/electronicstore", "root", "password");


        try {

            // Insert a new record into the "users" table
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO customer (name, age,email) VALUES (?, ?, ?)");
            stmt.setString(1, tempName);
            stmt.setInt(2, tempAge);
            stmt.setString(3, tempEmail);
            stmt.executeUpdate();

            System.out.println("Account successfully registered.");
        } catch (SQLException ex) {

            System.out.println("Registration has failed.");
            ex.printStackTrace();
        }
        // Close the connection
        conn.close();
        return 0;
    }

}
