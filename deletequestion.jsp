<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
th
    {
     background-color:#092756;color:white;
    }

        </style>
        <script src="loginjavascript.js" language="javascript">
            
        </script>
        <title>Delete Question Paper</title>
    </head>
    <body>
        <% String type,mobilenumber,firstname;%>
        <%
        type=(String)session.getAttribute("type");
        mobilenumber=(String)session.getAttribute("mobilenumber");
        firstname=(String)session.getAttribute("firstname");
        %>
        <%
          if(mobilenumber==null){
          response.sendRedirect("login.jsp");
          }
          else if(type.equals("teacher")){}
          else {
          response.sendRedirect("login.jsp");
          }
        %>
       <h3> <table border="1">
            <tr>
                <th>name</th>
                <th>mobilenumber</th>
            </tr>
            <tr>
                <td>${firstname}</td>
                <td>${mobilenumber}</td>
            </tr>
           </table></h3>

        &nbsp;
       <center>  <h3>Delete question</h3>
         <form onsubmit="return validate10();" action="deletequestion" method="post">
            <p>
                <input id="scode" type="text"  placeholder="Subject Code" name="scode" /> 
                <input id="no" type="text"  placeholder="Question number" name="no" /> 
              </p>
              <input type="submit"> 
             </form></center>
    </body>
</html>
