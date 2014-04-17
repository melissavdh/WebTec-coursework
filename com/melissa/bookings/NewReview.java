package com.melissa.bookings;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class NewReview extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        String connectionURL = "jdbc:derby:databases/riad";
        Connection connection = null;
        ResultSet rs;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String mail = request.getParameter("mail");
        String comment = request.getParameter("comment");
        
        try {
            Context i = new InitialContext();
            Context e = (Context) i.lookup("java:/comp/env");
            DataSource d = (DataSource) e.lookup("jdbc/riad");
            Connection con = d.getConnection();
            String sql = "insert into guestbook values (?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, date);
            pst.setString(3, mail);
            pst.setString(4, comment);
            pst.setString(5, "2011-01-01");
            int numRowsChanged = pst.executeUpdate();
            
        } catch(ClassNotFoundException e) {
            out.println("Couldn't load database driver: " + e.getMessage());
            
        } catch(SQLException e) {
         out.println("SQLException caught: " + e.getMessage());
         
        } catch (Exception e) {
            out.println(e);
            
        } finally {
            
            try {
                if (con != null) con.close();
            } catch (SQLException ignored) {
                out.println(ignored);
            }
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}


