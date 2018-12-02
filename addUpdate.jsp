<%-- 
    Document   : addUpdate
    Created on : Nov 29, 2018, 4:21:07 PM
    Author     : dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
           
            a:link{
                text-decoration:none;
                    color:black;
                   margin-left: 50px;
                    
            }
            a:visited
            {
                color:black;
            }
            .abc{
                background-color:#FDEFE5;
              margin-left: 270px;   
            }
            .a{
                background-color: #66CC33;
                margin-left: 250px;
                margin-right: 250px;
            
                text-align: center;
                color:white;
                height:30px;
           }
            .g{
  margin-left: 1200px;
    color:red;
}
a.u:link{
    color:red;
    
}
a.u:visited{
    color:red;
    
}
          
.q{
    text-align: right;
    color:red;
}

  


.h{
    font-size:30;
    color: #1e90ff;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <font size="4"><span style="color:white;"><b><marquee direction="left" behavior="alternate" bgcolor= "#37BC6"	 height="35" align="center">Students are supposed to submit their java assignment by tomorrow.</marquee></b></span></font>
<br><div class="g"><a class="u" href="login.html" >[ Logout]</a></div> 
<br>       <img src="twitter-4 (1).svg" height="40" width="40" align=right vspace="20" usemap="#aa"><map name="aa"><area shape="rect" coords="12,16,490,503" alt="asa=ts" href="https://twitter.com/login"></map>     <img src="facebook-clipart-small-17.png"  height="60" width="60" align=right usemap="singla" vspace="10"> <map name="singla"><area shape="rect" coords="12,16,490,503" alt="asas" href="http://www.facebook.com"> </map>
<img src="04d2015d45701d39127ce080d6caf3c1.jpg" align ="right"  height="100" width="200" hspace="0">
<br><br><br><br><br><br><font size="6"> <span class="abc" >   <b>               <a href="Student.html" target ="_blank" >Student Info</a>       <a href="marks.html" target ="_blank" >Marks</a>       <a href="attendence.html" target=_blank>Attendence</a>       <a href="table.html">Time Table</a></b></font></span>
<br><br> 
  <div class="a" >Welcome,You are curently enrolled in 2016-CU-CSE-5 SEM and are Stdying 11 subjects(Lecture,Tutorials,Practicals)
</div>
<br><br><br>
<table align="center">
        <form method="POST" >
       <tr><th> First Name :</th><th><input type="text" name="name10"></th></tr>
   <tr><th> LastName:</th><th><input type="text" name="lname10"></th></tr>
       <tr><th>  RollNo :</th><th><input type="text" name="roll10"></th>
        <tr><th> Date-Of-Birth :</th><th><input type="text" name="dob10"></th></tr>
       <tr><th>  Email :</th><th><input type="text" name="email10"></th></tr>
        <tr><th> Domicile:</th><th><input type="text" name="dom10"></th></tr>
        <tr><th> UserName:</th><th><input type="text" name="uname10"></th></tr>
        
        <tr><th> Gender:</th><th><input type="text" name="gender10"></th></tr>
        <tr><th> Nationality:</th><th><input type="text" name="nat10"></th></tr>
        <tr><th> Mobile No:</th><th><input type="text" name="mobile10"></th></tr>
        <tr><th> Category:</th><th><input type="text" name="cat10"></th></tr>
        <tr><th> Rank:</th><th><input type="text" name="rank10"></th></tr>
        <tr><th colspan="2"> <button type="submit" formaction="updateIt" align="center">Submit</button></th></tr>
        </form> 
    </table>
    </body>
</html>
