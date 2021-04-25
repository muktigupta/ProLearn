<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><title>welcome</title>
<style>  
    body { 
    width:100%;  
    height:100%;
    font-family:'Open Sans', sans-serif;
    background: #092756;
    background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
    background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
  }
    h1{color:white;}
    h2{color:white;}
   
 a {  
  width: 200px;
  display: block;
  color: white;
  padding: 8px 16px;
  text-decoration: none;
  border: 1px solid #555;
  margin-left: 550px;
  }

 a.active {
  background-color: #092756;
  color: white;  
    }

 a:hover:not(.active)
 {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>
    
  <table border="0" width="100%" >
		<tbody><tr>
             <th align="left"><img src="Online-exam-system.jpg"  width="430" height="210" ></th>	
        <th>	
	<td> <a class="active" href="welcomedemo.jsp">Home</a>	
	 <a href="login.jsp">Log In</a>
	    <a href="insertdata.jsp">Sign Up</a>
	 <a href="About.jsp">About</a>  </td>
     </th>
 </tr>
  </tbody></table>   
 &nbsp;&nbsp;
 
  <div align="right">
  <h2>Today's date: <%= (new java.util.Date()).toLocaleString()%></h2>
   </div>
   <p align="center">&nbsp;&nbsp;&nbsp;</p>
   
  <center>
  <img src="exam.jpg" width="410" height="205">
  <img src="onlineexamnew.jpg" width="410" height="205">
  <img src="onlineexam.jpg" width="410" height="205">
  </center>

</body>
</html>