<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <title>update user information</title>
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
  tr { 
  background-color: #092756;
  color: white; 
  }
</style>
<script src="loginjavascript.js" language="javascript">
    </script>
    </head>
    <body>
        <h3>Update user detail  </h3>
        <p>&nbsp;</p>
        
       <h3> <table border="1" >
            <tr>
                <th>First Name</th>
                <th>Surname</th>
                <th>Mobile Number</th>
                <th>Email Id</th>     
                <th>password</th>
                <th>type</th>
             </tr>
        <%! String mobilenumber,type1,emailid,password,type,firstname,secondname,mobilenumber1,firstname1;  %>
        <%
        type1=(String)session.getAttribute("type1");
        firstname=(String)session.getAttribute("firstname");
        secondname=(String)session.getAttribute("secondname");
        type=(String)session.getAttribute("type");
        password=(String)session.getAttribute("password");
        emailid=(String)session.getAttribute("emailid");
        mobilenumber1=(String)session.getAttribute("mobilenumber1");
        firstname1=(String)session.getAttribute("firstname1");
        %>
        
        <%
        session.setAttribute("mobilenumber1",mobilenumber1);
        session.setAttribute("firstname1",firstname1);
        session.setAttribute("type1",type1);
        %>
     
    <% 
     mobilenumber=(String)session.getAttribute("mobilenumber");
     if(session.getAttribute("mobilenumber")==null)
     {
    	 response.sendRedirect("login.jsp"); 	 
     } 
     else if(type1.equals("admin")){}
     else
     {
     response.sendRedirect("login.jsp");
     }
       
     %>
     <%
                
     %>
    
             <tr>
                 <td> ${firstname}</td>     
                 <td> ${secondname} </td>
                 <td> <%= mobilenumber %> </td>
                 <td> <%= emailid %></td>           
                 <td> <%= password %> </td>
                 <td> <%= type %> </td>
               </tr>
             </table>
       </h3>
             <p>&nbsp;</p>
             <p>&nbsp;</p>
             
          <table border="1" >
            <tr>
                <th>First Name</th>
                <th>Surname</th>
                <th>Email Id</th>
                <th>password</th>
                <th>type</th>
            </tr>          
          <form onsubmit="return validate7();" action="update1" method="post">
       <tr>        
          <td> <input id="firstname" type="text"  value="<%= firstname %>" name="firstname" > </td>
          <td> <input id="secondname" type="text"  value="<%= secondname %>" name="secondname" > </td>      
          <td> <input id="emailid" type="text"  value="<%= emailid %>" name="emailid" > </td>
          <td> <input id="password" type="text"  value="<%= password%>" name="password" > </td>
          <td> <input id="type" type="text"  value="<%=type%>" name="type" > </td>
       </tr>
           </table>
          <input type="submit">
        </form>
       
    </body>
</html>
