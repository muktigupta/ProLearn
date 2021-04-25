<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Result</title>
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
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );}
    
  h3{color:white;}
  
  th { 
  background-color: #092756;
  color: white;}
  
   </style>
   
    </head>
    <body>
  <%! String scode,mobilenumber,ans,correctans,firstname,type; %>
      
  <%
            type=(String)session.getAttribute("type");
            firstname=(String)session.getAttribute("firstname");
            mobilenumber=(String)session.getAttribute("mobilenumber");%>
  
  <%if(mobilenumber==null)
     {
        response.sendRedirect("login.jsp");   	 
     } 
  else if(type.equals("student")){}
  else if(type.equals("teacher")){}
  else {
  response.sendRedirect("login.jsp");
  }
     %>
      
   <p align="center">&nbsp;</p>
   <h3><table border="1">
      <tr>
          <th>name</th>
          <th>phone number</th>
      </tr>
       <tr>
            <td><%=firstname%> </td>          
           <td><%=mobilenumber%> </td>          
       </tr>
       </table></h3>
    
    <p align="center">&nbsp;</p>
      <h3><table border="1">
            <tr>
                <th>Subject code</th>
                <th>Mobile number</th>
                <th>Question number</th>
                <th>Student answer</th>
                <th>correct ans</th>
                <th>Result</th>
            </tr></h3>
           <%!int res,res1,res2;%>
      <%
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345");    
         Statement stmt1=con.createStatement();
         Statement stmt2=con.createStatement();
         Statement stmt3=con.createStatement();
         Statement stmt4=con.createStatement();
         ResultSet rs1=stmt2.executeQuery("select count(scode) from resultdemo where mobilenumber='"+mobilenumber+"'ORDER BY no ASC ");
         while(rs1.next())
         {
              res=rs1.getInt(1);   
         }
         
         ResultSet rs2=stmt3.executeQuery("select count(scode) from resultdemo where mobilenumber='"+mobilenumber+"' and result='pass'");
         while(rs2.next())
         {
              res1=rs2.getInt(1);   
         }
         
         ResultSet rs3=stmt4.executeQuery("select count(scode) from resultdemo where mobilenumber='"+mobilenumber+"' and result='fail'");
         while(rs3.next())
         {
              res=rs3.getInt(1);   
         }
         
         ResultSet rs=stmt1.executeQuery("select * from resultdemo where mobilenumber='"+mobilenumber+"' ORDER BY no ASC");
         
          %>
          Total No of Questions :-&nbsp;&nbsp;<%=res%><br>
          Total Right Answer:-&nbsp;&nbsp;<%=res1%><br>
          Total Wrong Answer:-&nbsp;&nbsp;<%=res2%> <br>
          <p align="center">&nbsp;</p>
      <%
         while(rs.next())
         {      
          %>
             <tr>            
              <td> <%= rs.getString(2) %> </td>     
              <td> <%= rs.getString(3) %> </td>
              <td> <%= rs.getInt(4) %>    </td>
              <td> <%= rs.getString(5) %> </td>
              <td> <%= rs.getString(6) %> </td>
              <td> <%= rs.getString(7) %> </td>
             </tr>
             <%
              }%>
             </table></h3>
<form action="Logout">
    &nbsp;
    <input type="submit"  value="Logout">
</form></h3>

    </body>
</html>
