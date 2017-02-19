<!DOCTYPE HTML>




<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>Elements - Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/main.css" />
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->


            <!-- Content -->
            <section>
                <header class="main">
                    <h1>XYZ School</h1>
                </header>


                <h2 >Mission</h2>


                <p>
                    <%!
                        private String Mission;
                        private String Vision;
                        Connection con;

                        public void jspInit() {
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
                            } catch (ClassNotFoundException e) {
                                e.printStackTrace();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    %>


                    <%
                        Controller controller = new Controller();
                        ResultSet resultSet = controller.getFiles(con, "Select * from missionvision");

                        try {
                            while (resultSet.next()) {
                                Mission = resultSet.getString(2);
                                Vision = resultSet.getString(3);
                            }

                            out.append(Mission);


                        } catch (SQLException e) {
                            e.printStackTrace();
                        }


                    %>
                </p>



                <h2 id="content">Vision</h2>
                <p>
                    <%out.append(Vision);%>
                </p>


                <!-- Content -->
                <h2 >Education for modern marvels</h2>
                <p>Our school is one of the most trusted name in quality education, which is recognized throughout the academic world for its progressive approach and commitment to excellence. Delhi Public School Pune was the second initiative of Takshila Educational Society. It was established in 2003 and is a collaborative effort with the Delhi Public Schools Society, which is one of the largest chains of CBSE schools in India. DPS Pune is affiliated to CBSE, New Delhi and offers schooling from Nursery to Class XII.</p>


                <div class="row">
                    <div class="6u 12u$(small)">
                        <h3>ASSESSMENTS</h3>
                        <p>Academic Assessment is an important part of teaching and learning process. Hence, the Assessment pattern has been developed after conducting research of various international standards together with a study of the NCERT guidelines. The stress is laid on maximizing learning in the classroom, inducing a spirit to use the knowledge in real life situations.
                        </p>
                    </div>
                    <div class="6u$ 12u$(small)">
                        <h3>CO-CURRICULAR PROGRAMME</h3>
                        <p>The bulk of the co-curricular programme is implemented through Thursday Activities held every Thursday and SUPW sessions held every Wednesday. Apart from these, various on-and off-campus programmes include Night Camp, excursions and trips, and inter- and intra-school competitions. Students are encouraged to develop their leadership skills through a ‘Student Council’ that is governed by a prefect body. During summer vacations, camps are organized with inputs from outside experts in several streams which include audio-visual workshops, dramatics, swimming, etc. </p>
                    </div>
                    <!-- Break -->
                    <div class="4u 12u$(medium)">
                        <h3>ACADEMIC PROGRAMME
                        </h3>
                        <p>DPS Pune is affiliated to CBSE, New Delhi. The curriculum followed in junior and senior classes is based on NCERT guidelines, albeit with several innovations which are introduced after much research and study. Till class V the curriculum is theme-based. The idea behind this is to seamlessly integrate various subjects with a common thread which links them to practical aspect of life. This gives our students a holistic view and allows them to apply knowledge and correlate various subjects to real-life situations.</p>
                    </div>
                    <div class="4u 12u$(medium)">
                        <h3>INFRASTRUCTURE</h3>
                        <p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit.</p>
                    </div>
                    <div class="4u$ 12u$(medium)">
                        <h3>Accumsan montes viverra</h3>
                        <p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit.</p>
                    </div>
                </div>

                <hr class="major" />



            </section>

        </div>
    </div>

    <!-- Sidebar -->
    <div id="sidebar">
        <div class="inner">

            <!-- Search -->
            <section id="search" class="alt">
                <form method="post" action="#">
                    <input type="text" name="query" id="query" placeholder="Search" />
                </form>
            </section>

            <!-- Menu -->
            <nav id="menu">
                <header class="major">
                    <h2>Menu</h2>
                </header>

                    <ul>
                        <li><a href="index.jsp">Homepage</a></li>
                        <li><a href="aboutus.jsp">About us</a></li>
                        <li><a href="photoGallery.jsp">Photo Gallery</a></li>
                        <li><a href="staff.jsp">Our Staff</a></li>
                        <li><a href="Events.jsp">Events</a></li>
                        <li><a href="Parents.jsp">Parents Corner</a></li>
                        <li><a href="Students.jsp">Students Corner</a></li>
                        <li><a href="ContactUs.jsp">Contact Us</a></li>
                        <li><a href=login.html>Admins Login</a></li>
                    </ul>

            </nav>

            <!-- Section -->


            <section>




                <header class="major">
                    <h2>Get in touch</h2>
                </header>
                Our School is one of the most trusted name in quality education, which is recognized throughout the academic world for its progressive approach and commitment to excellence .Delhi Public School Pune was the second initiative of Takshila Educational Society. It was established in 2003 and is a collaborative effort with the Delhi Public Schools Society, which is one of the largest chains of CBSE schools in India. DPS Pune is affiliated to CBSE, New Delhi and offers schooling from Nursery to Class XII.
                </p>
                <ul class="contact">
                    <li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
                    <li class="fa-phone">(000) 000-0000</li>
                    <li class="fa-home">1234 Somewhere Road #8254<br />
                        Nashville, TN 00000-0000</li>
                </ul>

                <header id="header">
                    <ul class="icons">
                        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
                        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                        <li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
                    </ul>
                </header>

            </section>



        </div>
    </div>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>
</html>