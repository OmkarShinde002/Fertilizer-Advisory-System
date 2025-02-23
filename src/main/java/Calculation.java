import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name = "Calculation", value = "/Calculation" )
public class Calculation extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

            String crop = req.getParameter("crops");
            String area= req.getParameter("Area");
            String soil= req.getParameter("Soil");
            int id=0;
            if ("Tomatoes".equals(crop)) {
                id=1;
            }
            else if ("BlueBerries".equals(crop)) {
                id=2;
            }
            else if ("Carrots".equals(crop)) {
                id=3;
            }
            else if ("Potatoes".equals(crop)) {
                id=4;
            }
            else if ("Wheat".equals(crop)) {
                id=5;
            }
            else if ("Lettuce".equals(crop)) {
                id=6;
            }
            else if ("Rice".equals(crop)) {
                id=7;
            }
            else if ("Soyabean".equals(crop)) {
                id=8;
            }
            else if ("Cotton".equals(crop)) {
                id=9;
            }
            else if ("Strawberries".equals(crop)) {
                id=10;
            }

        PrintWriter pw=resp.getWriter();
        resp.setContentType("Text/html");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyProject", "root", "admin");
            System.out.println("Connection Established");

            HttpSession session = req.getSession();
            String userID = (String) session.getAttribute("user_id");
            System.out.println(userID);

                String str = "INSERT INTO Calculation VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(str);

                ps.setInt(1, id);
                ps.setString(2, crop);
                ps.setString(3, area);
                ps.setString(4, soil);
                ps.setString(5, userID);
                ps.executeUpdate();


                System.out.println("Data stored successfully in the database!");
                ps.close();

                con.close();

            HttpSession session1 = req.getSession();
            session1.setAttribute("crop_id", id);
            System.out.println("CROP ID = " + id);

            RequestDispatcher dispatcher = req.getRequestDispatcher("Fertilizer.jsp");
            dispatcher.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("Error: " + e.getMessage());
        }
    }
}