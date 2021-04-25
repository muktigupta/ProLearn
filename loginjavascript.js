function validate()
{
  var firstname=document.getElementById("firstname");
  var secondname=document.getElementById("secondname");
  var mobilenumber=document.getElementById("mobilenumber");
  var emailid=document.getElementById("emailid");
  var password=document.getElementById("password");
  if(firstname.value.trim()=="")
  {
      alert("empty firstname"); 
      return false;
  }
  else if(secondname.value.trim()=="")
  {
      alert("empty secondname");
      return false;
  }
  else if(mobilenumber.value.trim()=="")
  {
      alert("empty mobilenumber");
      return false;
  } 
  else if(emailid.value.trim()=="")
  {
      alert("empty emailid"); 
      return false;
  }
  else if(password.value.trim()=="")
  {
      alert("empty password");return false;
  }
  else
  {
      return true;
  }
      
}
     
     
 function validate1()
{
  var mobilenumber=document.getElementById("mobilenumber");
  if(mobilenumber.value.trim()=="")
  {
   alert("empty mobilenumber");
   return false;
  }
  else
  {
   return true;
  }
}
         
  function validate2()
  {
   var mobilenumber=document.getElementById("mobilenumber");
   var password=document.getElementById("password");
   if(mobilenumber.value.trim()=="")
   {
   alert("empty mobilenumber");
   return false;
   }
   else if(password.value.trim()=="")
    {
     alert("empty password");
     return false;
     }
    else if(mobilenumber.value.trim.length>=9 && mobilenumber.value.trim.length<=11)
     {
      alert("mobilenumber is not valid");
      return false;
     }
     else
       {
        return true;
     }      
   }
       
    function validate3()
     {
        var question=document.getElementById("question");
        var option1=document.getElementById("option1");
        var option2=document.getElementById("option2");
        var option3=document.getElementById("option3");
        var option4=document.getElementById("option4");
        var correctans=document.getElementById("correctans");
        if(question.value.trim()=="")
         {
            alert("empty question please insert data");
            return false;
          }
        else if(option1.value.trim()=="")
         {
            alert("empty option 1 please enter data");
            return false;
          }
        else if(option2.value.trim()=="")
         {
            alert("empty option2 please enter data");
            return false;
          }
           else if(option3.value.trim()=="")
           {
               alert("empty option3 please enter data");
               return false;
           }
           else if(option4.value.trim()=="")
           {
               alert("empty option4 please enter data");
               return false;
           }
           else if(correctans.value.trim()=="")
           {
               alert("empty correctans please enter data");
               return true;
           }
           else 
           {
               return true;
           }
      }
       
       
     function validate4()
       {
           var question=document.getElementById("question");
           var option1=document.getElementById("option1");
           var option2=document.getElementById("option2");
           var option3=document.getElementById("option3");
           var option4=document.getElementById("option4");
           var correctans=document.getElementById("correctans");
           if(question.value.trim()=="")
           {
            alert("empty question please insert data");
            return false;
           }
           else if(option1.value.trim()=="")
           {
               alert("empty option 1 please enter data");
               return false;
           }
           else if(option2.value.trim()=="")
           {
               alert("empty option2 please enter data");
               return false;
           }
           else if(option3.value.trim()=="")
           {
               alert("empty option3 please enter data");
               return false;
           }
           else if(option4.value.trim()=="")
           {
               alert("empty option4 please enter data");
               return false;
           }
           else if(correctans.value.trim()=="")
           {
               alert("empty correctans please enter data");
               return true;
           }
           else 
           {
               return true;
           }
      }
       
       
   function validate5()
       {
           var question=document.getElementById("question");
           var option1=document.getElementById("option1");
           var option2=document.getElementById("option2");
           var option3=document.getElementById("option3");
           var option4=document.getElementById("option4");
           var correctans=document.getElementById("correctans");
           if(question.value.trim()=="")
           {
            alert("empty question please insert data");
            return false;
           }
           else if(option1.value.trim()=="")
           {
               alert("empty option 1 please enter data");
               return false;
           }
           else if(option2.value.trim()=="")
           {
               alert("empty option2 please enter data");
               return false;
           }
           else if(option3.value.trim()=="")
           {
               alert("empty option3 please enter data");
               return false;
           }
           else if(option4.value.trim()=="")
           {
               alert("empty option4 please enter data");
               return false;
           }
           else if(correctans.value.trim()=="")
           {
               alert("empty correctans please enter data");
               return true;
           }
           else 
           {
               return true;
           }
      }
      
   function validate6()
   {
       var mobilenumber=document.getElementById("mobilenumber");
       
       if(mobilenumber.value.trim()=="")
       {
         alert("empty mobilenumber");
         return false;
       }
       else
       {
         return true;
       }
    }  
    
    function validate7()
    {
        var firstname=document.getElementById("firstname");
        var secondname=document.getElementById("secondname");
        var emailid=document.getElementById("emailid");
        var password=document.getElementById("password");
        if(firstname.value.trim()=="")
        {
            alert("empty firstname");
            return false;
        }
        else if(secondname.value.trim()=="")
        {
            alert("empty surname");
            return  false;
        }
        else if(emailid.value.trim()=="")
        {
            alert("empty emailid");
            return false;
        }
        else if(password.value.trim()=="")
        {
            alert("empty password");
            return false;
        }
        else 
        {
            return true;
        }
    }
    
    function validate8()
    {
     var scode=document.getElementById("scode");
     var subject=document.getElementById("subject");
     var nq=document.getElementById("nq");
     var dat=document.getElementById("dat");
     if(scode.value.trim()=="")
     {
         alert("empty subject code mukti");
         return false;
     }
     else if(subject.value.trim()=="")
     {
         alert("empty subject name");
         return false;
     }
     else if(nq.value.trim()=="")
     {
         alert("you have to enter total number of question you want");
         return false;
     }
     else if(dat.value.trim()=="")
     {
         alert("please enter today date");
         return false;
     }
     else 
     {
         return true;
     }
   }
     
   function validate9()
   {
    var scode1=document.getElementById("scode1");
    var subject1=document.getElementById("subject1");
    if(scode1.value.trim()=="")
    {
      alert("empty subject code gupta");
      return false;
    }
    else if(subject1.value.trim()=="")
    {
     alert("empty subject name");
     return false;
    }
    else 
    {
     return true;
    }
  }
   
  
   function validate10()
   {
       var scode=document.getElementById("scode");
       var no=document.getElementById("no");
       if(scode.value.isEmpty.trim()=="")
       {
           alert("empty subject code");
           return false;
       }
       else if(no.value.trim()=="")
       {
         alert("empty question number");
         return false;
       }
       else 
       {
           return true;
       }
   }
   
      function validate11()
   {
    var a=document.getElementById("a"); 
    var b=document.getElementById("b"); 
    var c=document.getElementById("c"); 
    var d=document.getElementById("d"); 
    if(a.checked==true)
    {
    
    }
    else if(b.checked==true)
    {
     
    }
     else if(c.checked==true)
    {
     
    }
     else if(d.checked==true)
    {
     
    }
    else
    { 
     alert("No button selected");  
     return false;
    }
   }
   
   