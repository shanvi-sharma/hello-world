<%-- 
    Document   : success.jsp
    Created on : Jul 14, 2017, 5:46:11 PM
    Author     : Shanvi
--%>

<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
    </head>
    <body>
        <h1> welcome </h1>
        <%
            String s = (String)request.getAttribute("key");
            out.println(s);
            %>
            
    </body>
</html>
