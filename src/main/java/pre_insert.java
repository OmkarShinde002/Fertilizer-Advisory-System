import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;
import java.sql.*;

public class pre_insert {
    public static void main(String[] args) throws Exception {
        int r;
        String n;
        Scanner sc=new Scanner(System.in);

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/MyProject", "root", "admin");
        System.out.println("Connection Established");

        String str="insert into Stud1 values(?,?)";
        PreparedStatement ps=con.prepareStatement(str);

        System.out.println("Enter Roll no:");
        r=sc.nextInt();
        System.out.println("Enter name");
        n=sc.next();

        ps.setInt(1,r);
        ps.setString(2,n);
        ps.executeUpdate();

        System.out.println("Record Inserted");
        con.close();
    }
}
