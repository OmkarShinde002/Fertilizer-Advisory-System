import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "Complaint", value = "/Complaint")
@MultipartConfig
public class Complaint extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter pw=resp.getWriter();
        resp.setContentType("Text/html");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyProject", "root", "admin");
            System.out.println("Connection Established");

            HttpSession session = req.getSession();
            String userID = (String) session.getAttribute("user_id");
            System.out.println(userID);

            InputStream inputStream = null;

            Part filePart = req.getPart("image");
            if (filePart != null) {
                inputStream = filePart.getInputStream();
            }
            String issue = req.getParameter("issue");

            String str = "INSERT INTO Complaint (image, issue, user_id) values (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(str);

            if (inputStream != null) {
                ps.setBlob(1, inputStream);
            }
            ps.setString(2, issue);
            ps.setString(3,userID);

            int row = ps.executeUpdate();
            if (row > 0) {
                resp.getWriter().println("File and text successfully uploaded and stored in the database!");
            } else {
                resp.getWriter().println("Failed to upload file and text to the database.");
            }

            ps.close();
            con.close();
            RequestDispatcher dispatcher = req.getRequestDispatcher("MainPage.jsp");
            dispatcher.forward(req, resp);

        }
        catch (Exception e)
        { e.printStackTrace();
            resp.getWriter().println("Error: " + e.getMessage());
        }
    }
}
