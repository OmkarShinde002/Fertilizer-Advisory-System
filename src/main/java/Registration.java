import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

@WebServlet(name = "Registration", value = "/Registration" )
public class Registration extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
  {
    String fname=req.getParameter("fname");
    String lname=req.getParameter("lname");
    String phone=req.getParameter("phone");
    String state=req.getParameter("state");
    String email=req.getParameter("email");
    String uname=req.getParameter("uname");
    String pass=req.getParameter("pass");

    PrintWriter pw=resp.getWriter();
    resp.setContentType("Text/html");
    System.out.println("Enter in try catch block");
    try {

      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyProject", "root", "admin");
      System.out.println("Connection Established");

      String str = "insert into user (uname,pass,fname,lname,phone,email,state) values(?,?,?,?,?,?,?)";
      PreparedStatement ps = con.prepareStatement(str);

      ps.setString(1, uname);
      ps.setString(2, pass);
      ps.setString(3, fname);
      ps.setString(4, lname);
      ps.setString(5, phone);
      ps.setString(6, email);
      ps.setString(7, state);
      ps.executeUpdate();
      ps.close();
      System.out.println("Record Inserted");
      con.close();

      req.setAttribute("successMessage", "Registered successfully!");
      //resp.sendRedirect("index.jsp");
      RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
      dispatcher.forward(req, resp);
    }
    catch (Exception e)
    { e.printStackTrace();
      resp.getWriter().println("Error: " + e.getMessage());
    }
    }
}
