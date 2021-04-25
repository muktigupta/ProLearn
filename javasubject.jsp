<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>Java Subject</title>
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
      h3{color:black;}
    .submit {
         width: 20%;
        cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to left, #9C27B0, #E040FB);
        border: 0;
        padding-left: 36px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-right: 22px;
        text-align: center;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    th { 
  background-color: #092756;
  color: white; 
  }
  
    .main {
        background-color: #FFFFFF;
        width: 600px;
        height: 400px;
        margin: 0.8em auto;
        border-radius: 0.9em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
  td{color:white;}
        </style>
        <script loginjavascript.js language="javascript"></script>
    </head>
    <body>
          <%!
 String mobilenumber,firstname;
%>
     <%
     firstname=(String)session.getAttribute("firstname");
     mobilenumber=(String)session.getAttribute("mobilenumber");
     if(session.getAttribute("mobilenumber")==null)
     {
    	 response.sendRedirect("welcomeadmin.jsp");	 
     }   
       session.setAttribute("mobilenumber",mobilenumber);
     %>
     
     
     <h3><table border="1">
               <tr>
                   <th>Name</th>
                   <th>mobile number</th>
                   
               </tr>
         <tr>
             <td><%=firstname%></td>
        <td><%= mobilenumber%></td>  
   
         </tr>
     </table> </h3>
     
        <p align="center">&nbsp;</p>
    <%!
       String  no,option1,option2,option3,option4,question,correctans,scode;
    %>
     <%
      scode=(String)session.getAttribute("scode");
      no=(String)session.getAttribute("no");
      question=(String)session.getAttribute("question");
      option1=(String)session.getAttribute("option1");
      option2=(String)session.getAttribute("option2");
      option3=(String)session.getAttribute("option3");
      option4=(String)session.getAttribute("option4");  
     %>
     <div class="main">
         
    <form onsubmit="return validate11();" action="javasubject1" method="post">
         
    <h3>&nbsp;&nbsp; ->Question number=<%= no %> <br>
    <h3> &nbsp;&nbsp;->Question=<%= question%>  <br>
     
    <h3>&nbsp;&nbsp;<input id="a" type="radio" style="height:23px;width:23px" name="a" value="<%=option1%>"> <%=option1%> <br>
    <h3>&nbsp;&nbsp;<input id="b" type="radio" style="height:23px;width:23px" name="a" value="<%=option2%>"> <%=option2%> <br>
    <h3>&nbsp;&nbsp;<input id="c" type="radio" style="height:23px;width:23px" name="a" value="<%=option3%>"> <%=option3%> <br>
    <h3>&nbsp;&nbsp;<input id="d" type="radio" style="height:23px;width:23px" name="a" value="<%=option4%>"> <%=option4%> <br>
           
    <% session.setAttribute("no",no);%>
    <% session.setAttribute("scode",scode);%>
    <h3>&nbsp;&nbsp;<input type="submit" class="submit">
        
      </form>
    </body>
</html>
