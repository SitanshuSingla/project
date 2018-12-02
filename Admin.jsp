<html>
    <head>
        <style>
            a:link{
                text-decoration:none;
                color:black;
                margin-left: 50px;
                text-align: center;
            }
            a:visited
            {
                color:black;
            }

            .abc{


                background-color:#FDEFE5;
                margin-left: 300px;
            }
            .a{
                background-color: #66CC33;
                margin-left: 250px;
                margin-right: 250px;

                text-align: center;
                color:white;
                height:30px;

            }

            .as {

                overflow-y:auto;


            }
            .main{


                width:800px;

                height:300px;

                margin:auto;
            }
            .d1{




                float:left;
            }

            .d2{

                margin-left: 30px;



                float:left;
            }

            .d3{

                margin-left: 10px;


                float:left;
            }

            table, th, td {
                border: 1px solid lightgrey;
                border-collapse: collapse;
            }

            th{
                background-color: black;
                color:white;
            }
            td{
                height:20px;
            }
            .td1
            {
                height:255px;

            }
            .m{
                height:200px;
            }
            .g{
                margin-left: 1200px;
                color:red;
            }
            .floatLeft { width: 50%; float: left; }
            .cl{
                clear:both;
            }
            .mySlides {display:none;}
            .im
            {
                margin-left: 110px

            }
            a.u:link{
                color:red;

            }
            a.u:visited{
                color:red;

            }
            .about{
                margin-right: 100px;
                margin-left: 100;
                line-height: 1.1;
                text-align: justify;
                font-size:5;
                font-family: Arial, Helvetica, sans-serif;
            }
            .f{


            }


        </style>
    </head>
    <body>

        <font size="4"><span style="color:white;"><b><marquee direction="left" behavior="alternate" bgcolor= "#37BC6"	 height="35" align="center">Students are supposed to submit their java assignment by tomorrow.</marquee></b></span></font>
        <br><div class="g"><a class="u" href="login.html" >[ Logout]</a></div> 
        <br> <img src="twitter-4 (1).svg"height="40" width="40" align=right vspace="20" usemap="#aa"><map name="aa"><area shape="rect" coords="12,16,490,503" alt="asa=ts" href="https://twitter.com/login"></map>     <img src="facebook-clipart-small-17.png"  height="60" width="60" align=right usemap="singla" vspace="10"> <map name="singla"><area shape="rect" coords="12,16,490,503" alt="asas" href="http://www.facebook.com"> </map>
        <img src="04d2015d45701d39127ce080d6caf3c1.jpg" align ="right"  height="100" width="200" hspace="0">
        <br><br><br><br><br><font size="5" ><h1> <span class="abc" >               <a href="StudentInfo.jsp" target ="_blank" >Student Info</a>       <a href="marks.html"target ="_blank" >Marks</a>       <a href="Attendence.jsp" target=_blank>Attendence</a>       <a href="table.html">Time Table</a></font></h1></span>
    <div class="im">
        <img class="mySlides" src="careersr2_students_1up-hero-page-header-_1536x864.jpg" height="380" width="1100">
        <img class="mySlides" src="big-stock-cropped.jpg"  height="380" width="1100">
        <img class="mySlides" src="admission-2016_banner.jpg"  height="380" width="1100">


    </div>
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) {
                myIndex = 1
            }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 3500); // Change image every 2 seconds
        }
    </script>
    <br><br> 
    <div class="a" >Welcome,You are curently enrolled in 2016-CU-CSE-5 SEM and are Stdying 11 subjects(Lecture,Tutorials,Practicals)
    </div>

    <br>
    <br<br>
    <br>
    <div class = 'main'>
        <div class="d1">
            <table width="350 px" >
                <tr>
                    <th>Recent Activity</th>

                </tr>
                <tr>

                    <td  align="center" style="color:darkgrey"> <b>20-Nov-18</b></td>
                    
                </tr>
                <tr>

                    <td> <br>1. ENTERPRENEURSHIP Evaluation.</td>
                </tr>
                <tr>

                    <td> <br>2. Transport Arrangement.</td>
                </tr>
                <tr>

                    <td> <br>3. DJ Night.</td>
                </tr>
                <tr>

                    <td> <br>4. DateSheet.</td>
                </tr>
                <tr>

                    <td> <br>5. Seating plan.</td>
                </tr>
                <tr>

                    <td><br> 6. Events.</td>
                </tr>
            </table>
        </div>

        <div class="d2" >
            <table width="200 px"  >
                <tr>
                    <th>Alert</th>

                </tr>

                <tr>

                    <td class="td1" style="color:red" align="center"> <br>There are  no Alerts to show</td>
                </tr>

            </table>
        </div> 


        <div class="d3" >


            <table width="200 px"  >
                <tr>
                    <th>Ideas</th>

                </tr>

                <tr>

                    <td class="td1" style="color:#696969" align="center"> <br>Great minds discuss ideas; average minds discuss events; small minds discuss people.
                        No matter what people tell you, words and ideas can change the world.

                    </td>
                </tr>

            </table>
        </div> 
        <div style="clear:both"></div></div>
    <div class="main">
        <div class="d1">
            <table width="300 px"  >
                <tr>
                    <th>Mentor</th>

                </tr>

                <tr>

                    <td class="m" style="color:#696969" align="center"> 
                        Get in touch with your mentor any time<br><br>
                        <br>Mentor Name=Karan Bajaj
                        <br>

                        <br>Email-karanbajaj@gmail.com<br>
                        <br> Mobile No=8559631478
                    </td>
                </tr>

            </table></div>
        <div class="d2">
            <table width="300 px"  >
                <tr>
                    <th>Academic Calendar</th>

                </tr>

                <tr>
                    <td>
                        <iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=sitanshusingla11%40gmail.com&amp;color=%2329527A&amp;ctz=Asia%2FCalcutta" style="border-width:0" width="300" height="300" frameborder="0" scrolling="no"></iframe>
                    </td>
                </tr>

            </table>
        </div>

    </div>

</body>
</html>