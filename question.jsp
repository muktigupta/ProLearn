<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Play quiz</title>
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
 .register{
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
    h2{color:white;}
    h3{color:white;}
    th
    {
     background-color:#092756;color:white;
    }
        </style>
    </head>
    <body>
        
    <center> <h2>Online Examination System</h2></center>
            <p align="center">&nbsp;</p>
           <%!
 String mobilenumber,firstname,type1,type;
%>
    <%
    type1=null;
    %>
     <% 
     mobilenumber=(String)session.getAttribute("mobilenumber");
     firstname=(String)session.getAttribute("firstname");
     type1=(String)session.getAttribute("type1");
     type=(String)session.getAttribute("type");
     
     if(session.getAttribute("mobilenumber")==null)
     {
    	 response.sendRedirect("welcomeadmin.jsp");	 
     } 
     
     else if(type1.equals("admin")){}
     else if(type.equals("teacher")){}

     else{
     response.sendRedirect("login.jsp");
     }
            
     %>
     <%
      session.setAttribute("type1",type1);
      session.setAttribute("type",type);
      session.setAttribute("mobilenumber",mobilenumber);
      session.setAttribute("firstname",firstname);
     %>
     <h3><table border="1">
         <tr>
             <th>name</th>
             <th>mobilenumber</th>
         </tr>
         <tr>
     <td>${firstname}</td>
    <td><%= mobilenumber%></td>
   
         </tr>
     </table> </h3>
      <p align="center">&nbsp;</p>

         <form action="questionc.jsp">
             <button class="register" type="submit" value="submit">C Question  </button>  
             </form>
             <p align="center">&nbsp;</p>
             <form action="questioncpp.jsp">
             <button class="register" type="submit" value="submit">Cpp Question  </button>  
             </form>
             <p align="center">&nbsp;</p>

              <form action="questionjava.jsp">
             <button class="register" type="submit" value="submit">Java Question  </button>  
              </form></h2>       
    </body>
</html>
