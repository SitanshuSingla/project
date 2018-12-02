<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page import="beans.AttendenceBean"%>
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
    java.util.List<AttendenceBean> list = new LinkedList<AttendenceBean>();
    String query;
    if (type.equals("Admin"))
        query = "SELECT * FROM attendence";
    else
        query = "SELECT * FROM attendence WHERE Student = ?";
    try {
        PreparedStatement ps = con.prepareStatement(query);
        if (!type.equals("Admin"))
            ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String No = rs.getString("No");
            String Subject = rs.getString("Subject");
            String StudyPeriod = rs.getString("Study Period");
            String From = rs.getString("From");
            String To = rs.getString("To");
            String Delivered = rs.getString("Delivered");
            
            String Attended = rs.getString("Attended");
            String Percentage = rs.getString("Percentage");
            String Student = rs.getString("Student");
       
            list.add(new AttendenceBean(No, Subject, StudyPeriod, From, To, Delivered, Attended, Percentage,Student));
        }
    } catch (SQLException e) {
        System.err.println(e);
    }

    
%>
<html>
    <head>
        <style>

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
            .bo{
                background-color:#FDEFE5;
                margin-left: 250px;
                margin-right: 250px;
                height:50px;

            }
            .l{
                font-size: 30px;
                margin-top: 10px;
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
            .button4 {border-radius: 8px;}
            .button {

                border: none;
                width:70px;

                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
 
                cursor: pointer;
            }

            .q{
                text-align: right;
                color:red;
            }
            table,tr,td{
                border:1px solid darkgrey;
                border-collapse: collapse;

            }
            th{
                background-color:#67aa84;
                color:white;
            }




        </style>
    </head>
    <body>
        <script>
            function myFunction() {
                window.print();
            }
        </script>
        <font size="4"><span style="color:white;"><b><marquee direction="left" behavior="alternate" bgcolor= "#37BC6"	 height="35" align="center">Students are supposed to submit their java assignment by tomorrow.</marquee></b></span></font>
        <br><div class="g"><a class="u" href="login.html" >[ Logout]</a></div> 
        <br>        <img src="twitter-4 (1).svg"height="40" width="40" align=right vspace="20" usemap="#aa"><map name="aa"><area shape="rect" coords="12,16,490,503" alt="asa=ts" href="https://twitter.com/login"></map>     <img src="facebook-clipart-small-17.png"  height="60" width="60" align=right usemap="singla" vspace="10"> <map name="singla"><area shape="rect" coords="12,16,490,503" alt="asas" href="http://www.facebook.com"> </map>
        <img src="04d2015d45701d39127ce080d6caf3c1.jpg" align ="right"  height="100" width="200" hspace="0">
        <br><br><br><br><br><br><font size="6"> <span class="abc" >   <b>               <a href="Student.html" target ="_blank" >Student Info</a>       <a href="marks.html"target ="_blank" >Marks</a>       <a href="attendence.html" target=_blank>Attendance</a>       <a href="table.html">Time Table</a></b></span></font>
        <br><br> 

        <div class="a" >Welcome,You are curently enrolled in 2016-CU-CSE-5 SEM and are Stdying 11 subjects(Lecture,Tutorials,Practicals)
        </div>
        <div class="bo l">
            <center>Attendance</center></div>

        <table  align='center' width="900px" class="j">
            <tr>
                <th align="left" colspan="8" height="40px">Attendance Details:</th>
             <th><button onclick="myFunction()" class="button button4"><b>Print</b></button></th>
            </tr>
            <tr>
                <td height="35px"> No.</td>
                <td >Subject</td>
                <td >Study Period</td>
                <td >From</td>
                <td >To</td>
                <td >Delivered</td>
                <td>Attended</td>
                <td > Percentage</td>
                <td>Student</td>
                
            </tr>
            <%for (AttendenceBean i : list) {%>
            <tr class="s">
                <td height="35px"><%=i.getNo()%></td>
                <td><%=i.getSubject()%></td>
                <td><%=i.getStudyPeriod()%></td>
                <td><%=i.getFrom()%></td>
                <td><%=i.getTo()%></td>
                <td><%=i.getDelivered()%></td>
                <td><%=i.getAttended()%></td>
                <td><%=i.getPercentage()%></td>
                <td><%=i.getStudent()%></td>
               
            </tr>
            <%}%>
        </table>
    </body>
</html>