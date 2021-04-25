<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head> <title>welcome</title>
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
</style>
 </head>
<body>
<%!
 String mobilenumber,type;
%>
    <% type=(String)session.getAttribute("type");
    mobilenumber=(String)session.getAttribute("mobilenumber"); %>
    
     <% 
     
     if(mobilenumber==null)
     {
    	 response.sendRedirect("login.jsp");	 
     } 
     else if(type.equals("student")){}
     else
     {
     response.sendRedirect("login.jsp");
     }
     %>
     
     
     
      <h3>
 <table border="1" >
    <tr>
        <th>First Name</th>
        <th>Surname</th>
        <th>Mobile Number</th>
        <th>Email Id</th>
        <th>Type</th>
    </tr>
 <%
 

     
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345"); 
         Statement stmt=con.createStatement();
          ResultSet rs=stmt.executeQuery("select * from gauridemo where mobilenumber='"+mobilenumber+"'");
          rs.next();    
          session.setAttribute("mobilenumber",mobilenumber);
          session.setAttribute("firstname",rs.getString(1));
          session.setAttribute("type",type);
     %>
     
    
             <tr>
                 <td> <%= rs.getString(1)%> </td>     
                 <td> <%= rs.getString(2) %></td>
                 <td> <%= rs.getString(3) %></td>
                 <td> <%= rs.getString(4) %></td>
                 <td> <%= rs.getString(5) %></td>
             </tr>
             </table>
     </h3>
             
             <p align="center">&nbsp;</p>
             <form action="subjectlist.jsp">
             <button class="register" type="submit" value="submit">Play Quiz  </button>  
             </form>
             <p align="center">&nbsp;</p>
             <form action="result.jsp">
             <button class="register" type="submit" value="submit">Display previous played quiz result  </button>  
             </form>
 
</body>
</html>