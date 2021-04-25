<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>select all data of teacher</title>
        <style>
            html { width: 100%; height:100%; overflow:show; }

body { 
    width: 100%; 
    height:100%;
    font-family: 'Open Sans', sans-serif;
    background: #092756;
    background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
    background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
}
    
  h3{color:white;}
  th { 
  background-color: #092756;
  color: white; 
  }
        </style>
    </head>
    <body>
      
    <%!  String mobilenumber,type1;  %> 
    <%  mobilenumber=(String)session.getAttribute("mobilenumber1");
    
        type1=(String)session.getAttribute("type1");
    %>
           <%
           if(mobilenumber==null){
           response.sendRedirect("login.jsp");
           }
           else if(type1.equals("admin")){}
           else{
           response.sendRedirect("login.jsp");
           }
           %>
    <h3>welcome..
      admin 
  ...welcome..</h3>
    <%   Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345"); 
         Statement stmt=con.createStatement();
          ResultSet rs2=stmt.executeQuery("select * from gauridemo where mobilenumber='"+mobilenumber+"'");
          rs2.next();  %>
          
     <h3><table border="1" >
            <tr>
                <th>First Name</th>
                <th>Surname</th>
                <th>Mobile Number</th>
                <th>Email Id</th>
                <th>Type</th>
                
            </tr>
           
             <tr>
                 <td> <%= rs2.getString(1) %> </td>     
                 <td> <%= rs2.getString(2) %> </td>
                 <td> <%= rs2.getString(3) %> </td>
                 <td> <%= rs2.getString(4) %> </td>
                 <td> <%= rs2.getString(5) %> </td>
             </tr>
         </table></h3>   
        <p align="center">&nbsp;</p>
       <h3><table border="1">
            <tr>
                <th>First Name</th>
                <th>Surname</th>
                <th>Mobile Number</th>
                <th>Email Id</th>
                <th>Type</th>
            </tr>
    <h3>All teacher information<h3>
    <% Statement stmt1=con.createStatement();
          ResultSet rs=stmt1.executeQuery("select * from gauridemo where type='teacher'");
         while(rs.next())
         {      
          %>
             <tr>
                 <td> <%= rs.getString(1) %> </td>     
                 <td> <%= rs.getString(2) %> </td>
                 <td> <%= rs.getString(3) %> </td>
                 <td> <%= rs.getString(4) %> </td>
                 <td> <%= rs.getString(5) %> </td>
             </tr>
             <%
              }%>
             </table></h3>
       
 </body>
</html>
