


<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.*"%>

<%-- 
    Document   : data
    Created on : Jul 14, 2017, 5:31:46 PM
    Author     : Shanvi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
           
   
        <%
            String s1="";
        String s2="";
              try
            {
        Class.forName("com.mysql.jdbc.Driver");
   Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");

   Statement stat=(Statement)con.createStatement();
        ResultSet rs=(ResultSet)   stat.executeQuery("select * from reg");
        while(rs.next())
        {
            s1=rs.getString(1);
            s2=rs.getString(2);
            %>
            <tr>
                <td>
                    <a href="success.jsp?name=<%=s1%>"><%=s1 %></a> 
                </td>
                <td>
                    <%=s2 %>
                </td>        
                            
            </tr>
            <%
        }
            }catch(Exception e)
            {
                
            }
        
        %>
             </table>
    </body>
</html>
