<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cpp Question</title>    
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
  .main {
        background-color: #FFFFFF;
        width: 700px;
        height: 820px;
        margin: 3em auto;
        border-radius: 1.9em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
      .un {
    width: 66%;
    color: rgb(38, 50, 56);
    font-weight: 650;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(100, 100, 100, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(4, 4, 4, 4.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 40px;
    }
    
    .submit {
      width: 26%;
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to left, #9C27B0, #E040FB);
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
          margin-right: 22px;
           text-align: center;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
      .sign {
       margin-left: 35px;
        padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    } 
    form.form1 {
        padding-top: 40px;
    }
    h1{color:white;}
    
    .click {
       margin: 20px 0;
  font-size: 11px;
  color: white;
  text-align: center;
  text-shadow: 0 1px #2a85a1;
    }
   h3{color:white;}
   th { 
  background-color: #092756;
  color: white; 
  }

   </style>
   <script src="loginjavascript.js" language="javascript">
       </script>
  </head>
  <body>
      <%! String mobilenumber,type,firstname; %>
          <%
           mobilenumber=(String)session.getAttribute("mobilenumber");
           type=(String)session.getAttribute("type");
           firstname=(String)session.getAttribute("firstname");
          %>
     <%
    
     if(session.getAttribute("mobilenumber")==null)
     {
    	 response.sendRedirect("welcomeadmin.jsp");	 
     }   
        else if(type.equals("teacher")){}
     else {
     response.sendRedirect("login.jsp");
     }
     
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
 <div  align="center">
  <div class="main">
   <h2 class="sign">Create Cpp Language question</h2> 
     
	  <form onsubmit="return validate8();" action="cppquestion5" method="post">  
              
              <p>
            <input id="scode" type="text" class="un "  placeholder="Subject Code" name="scode" /> <br>
              </p>
              <p>
             <input id="subject" type="text" class="un " placeholder="Subject Name" name="subject" /> <br>
              </p>
              <p>
               <input id="nq" type="text" class="un " placeholder="Number of Question" name="nq" /> <br>
              </p>
              <p>
            <input id="dat" type="date" class="un "  placeholder="Date" name="dat"  value= "2020-08-19"/> <br>
              </p>
           
              <p align="right"><br>
                <input class="submit" name="submit" type="submit"  value="Save  "  >
                <br>               
              </p>                                     
	  </form>
         <h3>or<h3>
                
        <form onsubmit="return validate9()" action="cppdemo" method="post">
              <p>
            <input id="scode1" type="text" class="un "  placeholder="Subject Code" name="scode" > <br>
              </p>
              <p>
             <input id="subject1" type="text" class="un " placeholder="Subject Name" name="subject" > <br>
              </p>
                <p align="right"><br>
                <input class="submit" name="submit" type="submit"  value="Submit "  >
                <br>               
              </p>           
        </form>
  
    </body>
</html>
