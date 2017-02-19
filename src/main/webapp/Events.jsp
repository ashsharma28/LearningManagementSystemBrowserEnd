<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->



<%@ page import="com.sun.corba.se.pept.transport.ConnectionCache" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.net.URI" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
                    <h1>Events</h1>
                </header>


                <div class="table-wrapper">

                    <center>

                        <%!
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
                            ResultSet resultSet = controller.getFiles(con, "Select * from event ");

                            try {


                                while (resultSet.next()) {
                                    out.append("<div class=\"box\">");


                                    out.append("<span><img src=\"" +  resultSet.getString(4) +"\" width=\"300\" height==\"300\" alt=\"\" /></span><p>\n");


                                    out.append("<h1>" + resultSet.getString(2) + "</h1><p>\t");




                                    out.append(resultSet.getString(3) + "<br>\t");;


                                    out.append("</div>");
                                }


                            } catch (SQLException e) {
                                e.printStackTrace();
                            }


                        %>
                    </center>

                </div>

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
                </p>                <ul class="contact">
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