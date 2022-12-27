<%-- 
    Document   : image
    Created on : Jul 17, 2017, 5:30:31 PM
    Author     : Shanvi
--%>


<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
                System.out.println("hi........................");
            String s1="";
            String s2="";
    Class.forName("com.mysql.jdbc.Driver");
         System.out.println("hi........................");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pinki","root","");
         System.out.println("hi........................");
    PreparedStatement stat=con.prepareStatement("insert into register values(?,?)");
         System.out.println("hi........................");
    stat.setString(1,s1);
    stat.setString(2,s2);
    FileInputStream fos=new FileInputStream("abc.jpg");
    System.out.println("hi........................");
stat.setBinaryStream(2,fos,fos.available());
    System.out.println("hi........................");
int i= stat.executeUpdate();
    System.out.println("hi........................"+i);
if(i>0)
{
    response.sendRedirect("success.jpg");
}
else
{
    response.sendRedirect("error.jpg");
}
%>
    </body>
</html>
