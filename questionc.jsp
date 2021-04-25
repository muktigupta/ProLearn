<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>C Question</title>
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
  
        .register {
        cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
        border: 1;
        padding-left: 50px;
        padding-right: 50px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left: 5%;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    th { 
  background-color: #092756;
  color: white; 
  }
    td{color:white}
    th
    {
     background-color:#092756;color:white;
    }

            </style>
    </head>
    <body>
         <%!
 String mobilenumber,firstname,type,type1;
%>
     <%
     mobilenumber=(String)session.getAttribute("mobilenumber");
     firstname=(String)session.getAttribute("firstname");
     type=(String)session.getAttribute("type");
     type1=(String)session.getAttribute("type1");
     if(session.getAttribute("mobilenumber")==null)
     {
    	 response.sendRedirect("login.jsp");
    	 
     } 
     else if(type1.equals("admin")){}
     else if(type.equals("teacher")){}
     else{
     response.sendRedirect("login.jsp");
     }
     
     %>
     <h3>  
         <table border="1">
             <tr>
                 <th>name</th>
                 <th>mobilenumber</th>
             </tr>
         <tr>
        <td>${firstname}</td>
    <td><%= mobilenumber%></td>
   
         </tr>
     </table> 
     <p align="center">&nbsp;</p>
      <table border="1">
            <tr>
                <th>scode</th>
                <th>no</th>
                <th>Question</th>
                <th>Option 1</th>
                <th>Option 2</th>
                 <th>Option 3</th>
                <th>Option 4</th>
                 <th>correct ans</th>
            </tr>
      <%
          int scode=0;
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345"); 
            Statement stmt1=con.createStatement();
            PreparedStatement stmt2=con.prepareStatement("select * from questiondemo where scode='101'");
           ResultSet rs1=stmt2.executeQuery();
           if(rs1.next())
         {
             scode=rs1.getInt(1);
         }
          ResultSet rs=stmt1.executeQuery("select * from questiondemo where scode='"+scode+"' order by no ASC");
         while(rs.next())
         {      
          %>
             <tr>
                 <td> <%= rs.getString(1) %> </td>     
                 <td> <%= rs.getString(2) %> </td>
                 <td> <%= rs.getString(3) %> </td>
                 <td> <%= rs.getString(4) %> </td>
                 <td> <%= rs.getString(5) %> </td>
                  <td> <%= rs.getString(6) %> </td>     
                 <td> <%= rs.getString(7) %> </td>
                 <td> <%= rs.getString(8) %> </td>
                
             </tr>
             <%
              }%>
             </table></h3>
            
    </body>
</html>
