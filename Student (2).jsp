<%@page import="beans.StudentBeans"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.err.println(e);
    }

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sign?useSSL=false&allowMultiQueries=true", "root", "sitanshu123");
    String username = (String) session.getAttribute("name");
    String type = (String) session.getAttribute("type");
//    String username = "asa";
    java.util.List<StudentBeans> list = new LinkedList<StudentBeans>();
    String query;
    if (type.equals("Admin"))
        query = "SELECT * FROM student";
    else
        query = "SELECT * FROM student WHERE `First Name` = ?";
    try {
        PreparedStatement ps = con.prepareStatement(query);
        if (!type.equals("Admin"))
            ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String  FirstName= rs.getString("First Name");
            String LastName = rs.getString("Last Name");
            String RollNo = rs.getString("Roll No");
            String Gender = rs.getString("Gender");
            String DateofBirth = rs.getString("Date of Birth");
            String Nationality = rs.getString("Nationality");
            
            String Email = rs.getString("Email");
            String MobileNo = rs.getString("Mobile No");
            String Domicile = rs.getString("Domicile");
            String Category = rs.getString("Category");
            String UserName= rs.getString("User Name");
            String Rank = rs.getString("Rank");
       
            list.add(new StudentBeans(FirstName, LastName,RollNo, Gender, DateofBirth,Nationality, Email, MobileNo,Domicile,Category,UserName,Rank));
        }
    } catch (SQLException e) {
        System.err.println(e);
    }
%>
<html>
    <head>
        <style>
            body{
                background-image: url("5120x2880-light-yellow-solid-color-background.jpg");
            }
            a:link{
                text-decoration:none;
                    color:black;
                   margin-left: 50px;
                    
            }
            a:visited{
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
  margin-left: 1280px;
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
table{
    border:1px solid darkgrey;
   
  
}
th{
    background-color:#67aa84;
    color:white
}



            </style>
        </head>
    <body>
        <font size="4"><span style="color:white;"><b><marquee direction="left" behavior="alternate" bgcolor= "#37BC6"	 height="35" align="center">Students are supposed to submit their java assignment by tomorrow.</marquee></b></span></font>
<br><div class="g"><a class="u" href="login.html" >[ Logout]</a></div> 
<br>        <img src="twitter-4 (1).svg"height="40" width="40" align=right vspace="20" usemap="#aa"><map name="aa"><area shape="rect" coords="12,16,490,503" alt="asa=ts" href="https://twitter.com/login"></map>     <img src="facebook-clipart-small-17.png"  height="60" width="60" align=right usemap="singla" vspace="10"> <map name="singla"><area shape="rect" coords="12,16,490,503" alt="asas" href="http://www.facebook.com"> </map>
<img src="04d2015d45701d39127ce080d6caf3c1.jpg" align ="right"  height="100" width="200" hspace="0">
<br><br><br><br><br><br><font size="6"> <span class="abc" >   <b>               <a href="Student.html" target ="_blank" >Student Info</a>       <a href="marks.html"target ="_blank" >Marks</a>       <a href="attendence.html" target=_blank>Attendence</a>       <a href="table.html">Time Table</a></b></font></span>
<br><br> 
  <div class="a" >Welcome,You are curently enrolled in 2016-CU-CSE-5 SEM and are Stdying 11 subjects(Lecture,Tutorials,Practicals)
</div>
<br><br><br>

<table  align='center' width="1000px" >
  <tr>
    <th align="right">Details:&nbsp &nbsp<u> Name</u>:&nbspSitanshu Singla&nbsp &nbsp <u>Class</u>:&nbsp2016-CU-</th>
   <th align="left">BE-CSE_5 SEM&nbsp&nbsp <u>Admission Date</u>:&nbsp10-Jus_16</th>
   <th> </th>
  </tr>
  <tr>
   <td valign="top" align="left"><br><br> Name: &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp<%=list.get(0).getFirstName()%>
    <br><br>Roll No:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp<%=list.get(0).getRollNo()%>
    <br><br>Date of Birth:&nbsp&nbsp&nbsp &nbsp&nbsp<%=list.get(0).getDateofBirth()%>
    <br><br>Email:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp <%=list.get(0).getEmail()%>
   <br><br>Domicile:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp <%=list.get(0).getDomicile()%>
   </td>
     <td valign="top" align="left"><br><br>Last Name: &nbsp&nbsp&nbsp &nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=list.get(0).getLastName()%>
  <br><br>Gender:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=list.get(0).getGender()%>
  <br><br>Nationality:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp<%=list.get(0).getNationality()%>
 <br><br>Mobile No:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp<%=list.get(0).getMobileNo()%>
 <br><br>Category:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp   &nbsp&nbsp<%=list.get(0).getCategory()%>
 
     </td>
     
     
  </tr>
  <tr><td><br> User Name:&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp<%=list.get(0).getUserName()%>
   
      </td>
  <td align="left">
      <br><br><br>Rank:&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp<%=list.get(0).getRank()%>
     
  </td></tr>
  <tr><td><br><br><br><br><br><br></td></tr>
</table>


       
</body>
</html>