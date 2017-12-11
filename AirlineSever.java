import java.io.*;
import java.io.Writer;
import java.sql.*;
import java.util.*;

public class AirlineSever {
   static Connection conn = null;
   static ResultSet rs = null;
   static PreparedStatement ps = null;

public static void main(String[] args) {
		// TODO Auto-generated method stub
   openConnection();
   insertCustomer();
   bookFlight();
   displayTicket();
   
}//end main
   
   //Get connection with database server
   public static void openConnection() {
	   try {	
	      Class.forName("org.postgresql.Driver");
	      conn = DriverManager
			            .getConnection("jdbc:postgresql://localhost:5432/hw_5", 
			            "postgres", "MetroState8477");
      } catch (Exception e) {
	      e.printStackTrace();
	      System.out.println("Did not connect.");
	      System.exit(0);
      }
      //System.out.println("Initial open database success");
   }//end open connection
   
   
   
   //insert customer info into the database
   public static void insertCustomer() {
	  Scanner in = new Scanner(System.in);
		
	  //User input for customer informatiom
	  
	  System.out.println("Welcome to Huntington Industries flight booking service!");
	  System.out.println("Enter your First Name:");
	  String firstName = in.nextLine();
      System.out.println("Enter your Last Name:");
	  String lastName = in.nextLine();
	  System.out.println("Enter your E-mail address:");
	  System.out.println("If no E-mail address please enter 'No E-mail'.");
	  String email = in.nextLine();
	  
	  
	  System.out.println("Enter your phone number:");
	  System.out.println("Ex: 7201234567");
	  String phoneNumber = in.nextLine();
	  
	  
	   
	  //inserting information into database
	  try {
		   openConnection();
		   conn.setAutoCommit(false);
		   //System.out.println("Opened database successfully.");
		   		   
		   String sql = "INSERT INTO Customer (first_name, last_name, email, phone_number)"
				         + "Values(?,?,?,?)";
		   ps = conn.prepareStatement(sql);
		   ps.setString(1, firstName);
		   ps.setString(2, lastName);
		   ps.setString(3, email);
		   ps.setString(4, phoneNumber);
		   ps.executeUpdate();
		   
		   ps.close();
		   conn.commit();
		   conn.close();
	  } catch (Exception e) {
		  System.err.println(e.getClass().getName()+": " +e.getMessage());
		  System.exit(0);
	  }
	  System.out.println("Customer records have been ceated successfully.");
   }//end insertCustomer

   public static void bookFlight() {
	  Scanner in = new Scanner(System.in);
	  System.out.println("Please enter your Starting City:");
	  String StartCity = in.nextLine();
	  System.out.println("Please enter today's date:");
	  System.out.println("mm/dd/yy");
	  String currentdate = in.nextLine();
	  
	  String sql = "SELECT destination_city " + "FROM Flight "
	               +"Where origin_city = ?";
	  try {
		  openConnection();
		  conn.setAutoCommit(false);
		  System.out.println("Opened booking successfully");
		  
		  ps = conn.prepareStatement(sql);
		  ps.setString(1, StartCity);
		  rs = ps.executeQuery();
		  System.out.println("The destination cities are: ");
		  displayCity(rs);
		  
		  System.out.println("Please select one of the destination cities.");
		  
		  
		  String DestinationCity = in.nextLine();
		  
		  String sql2 = "SELECT * " + "FROM Flight "
		               +"Where origin_city = ?"
		               + "AND destination_city = ?";
		  ps = conn.prepareStatement(sql2);
		  ps.setString(1, StartCity);
		  ps.setString(2, DestinationCity);
		  rs = ps.executeQuery();
		  
		 /*String sql3 = "INSERT INTO Booking (booking_date, booking_city, "
		 		+ "paying_customer) Values (?,?,?,?)";
		 ps = conn.prepareStatement(sql3);
		 ps.setString(1, currentdate);
		 ps.setString(2,  );*/
		  
	  } catch (Exception e) {
		  System.out.println("Error in Booking.");
		  System.exit(0);
	  }

   }//end book flight
   
   
   private static void displayCity(ResultSet rs) throws SQLException {
	   while (rs.next()) {
		   System.out.println(rs.getString("destination_city"));
	   }
   }
   
   public static void displayTicket() {
	   try {
	      openConnection();
	      conn.setAutoCommit(false);
	      Scanner in = new Scanner(System.in);
	      System.out.println("Please Enter First Name: ");
	      String name = in.nextLine();
	      
	      String sql = "SELECT * FROM Customer "
	    		       + "Where first_name = ?";
	      ps = conn.prepareStatement(sql);
	      ps.setString(1, name);
	      rs = ps.executeQuery();
	      
	      PrintWriter outFile = new PrintWriter( new File("HW6.flight"));
	      
	      while (rs.next()) {
	    	  String FirstName = rs.getString("first_name");
	    	  String LastName = rs.getString("last_name");
	    	  String email = rs.getString("email");
	    	  String PhoneNumber = rs.getString("phone_number");
	    	  int id = rs.getInt("id");
	    	  outFile.println("First Name: " + FirstName);
	    	  outFile.println("Last Name: " + LastName);
	    	  outFile.println("email: " + email);
	    	  outFile.println("Phone Number: " + PhoneNumber);
	    	  outFile.println("ID: " + id);
	      }//end while
	      
	      outFile.println("Thank you for using Huntington Industries");
	      
	      outFile.close();
	      rs.close();
	      ps.close();
	      conn.close();
	    		  
	   }catch (Exception e) {
		   System.err.println(e.getClass().getName()+": " +e.getMessage());
		   //System.out.println("There was an error in ticketing");
		   System.exit(0);
	   }
	  System.out.println("Ticket is complete");
   }//end display ticket
 		
   
}//end AirlineServer
