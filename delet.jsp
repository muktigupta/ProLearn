<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Delete teacher data</title>
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
  h3{color:white}
        </style>
    </head>
    <script src="loginjavascript.js" language="javascript">
        </script>
    <body>
        <% String type1,mobilenumber1,firstname1; %>
        <% 
            type1=(String)session.getAttribute("type1"); 
            mobilenumber1=(String)session.getAttribute("mobilenumber1");
            firstname1=(String)session.getAttribute("firstname1");
         %>
        <%
            if(mobilenumber1==null){
            response.sendRedirect("login.jsp");
            }
       else if(type1.equals("admin")){}
        else{
        response.sendRedirect("login.jsp");
        }
        %>
        &nbsp;
       <h3><table border="1">
           <tr>
               <th>name</th>
               <th>mobilenumber</th>
           </tr>
           <tr>
               <td>${firstname1}</td>
               <td>${mobilenumber1}</td>
           </tr>
           </table></h3>

       <center> <h3>Enter a mobile number to delete data</h3>
          <form onsubmit="return validate1();" action="delete1" method="post">
            <p>
                <input id="mobilenumber" type="text"  placeholder="Mobile number" name="mobilenumber" /> 
              </p>
              <input type="submit"> 
             </form></center>
    </body>
</html>
