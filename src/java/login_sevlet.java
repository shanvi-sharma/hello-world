/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shanvi
 */
public class login_sevlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String s1=request.getParameter("Email");
            String s2=request.getParameter("Password");
            Class.forName("com.mysql.jdbc.Driver");
             Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","");

   Statement stat=(Statement)con.createStatement();
    
    ResultSet rs= stat.executeQuery("Select * from data where EMail='"+s1+"' and Password='"+s2+"' ");
    int ctr=0;
    while(rs.next())
    {
        ctr++;
    }
    if(ctr!=0)
    {
       String s= rs.getString(1);
       String s3=rs.getString(4) ;
       String s4= rs.getString(9);
       if ((s1.equals(s3))&&(s2.equals(s4)))
               {
                   RequestDispatcher rd= request.getRequestDispatcher("success.jsp");
               }
    }
    else
    {
        RequestDispatcher rd= request.getRequestDispatcher("error.jsp");
    }
        }
    catch(Exception e)
            {
            System.out.print(e);
            
            }
    }
}
      
            
            
            
            
