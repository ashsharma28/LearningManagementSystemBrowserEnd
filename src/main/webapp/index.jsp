<!DOCTYPE HTML>


<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Editorial by HTML5 UP</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/assets/css/ie9.css"/><![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="/assets/css/ie8.css"/><![endif]-->
    <!--[if lte IE 8]>
    <script src="/assets/js/ie/html5shiv.js"></script><![endif]-->



    <link rel="stylesheet" href="assets/css/main.css"/>
</head>

<body background="data/background.jpg">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">

        <div class="inner">


            <!-- Banner -->
            <section id="banner">
                <div class="content">

                    <header>
                        <h1>WELCOME TO XYZ School</h1>

                        <p>Eduction the modern marvels</p>
                    </header>
                    <p>Our school is one of the most trusted name in quality education, which is recognized throughout
                        the academic world for its progressive approach and commitment to excellence. Delhi Public
                        School Pune was the second initiative of Takshila Educational Society. It was established in
                        2003 and is a collaborative effort with the Delhi Public Schools Society, which is one of the
                        largest chains of CBSE schools in India. DPS Pune is affiliated to CBSE, New Delhi and offers
                        schooling from Nursery to Class XII.<br><br>In a very short span of time DPS Pune has
                        established itself as one of the best K-12 institutions in western India. DPS has proliferated
                        into a multidisciplinary institution, offering various facilities to impart varied expertise to
                        keep pace with the world .The school offers courses that focus on holistic development of
                        individuals by cultivating their unique talents.
                    </p>
                    <ul class="actions">
                        <li><a href="aboutus.jsp" class="button big">Learn More</a></li>
                    </ul>
                </div>
									<span class="image object">
										<a class="w3-btn-floating w3-display-left" style="cursor: hand"
                                           onclick="plusDivs(-1)">&#10094;</a>
										<a class="w3-btn-floating w3-display-right" style="cursor: hand"
                                           onclick="plusDivs(+1)">&#10095;</a>



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
                            ResultSet resultSet = controller.getFiles(con, "Select * from slider");

                            try {
                                while (resultSet.next()) {
                                    out.append("<img class=\"mySlides\" src=\"");
                                    out.append(resultSet.getString(2));
                                    out.append("\" alt=\"\" />\n");
                                }

                            } catch (SQLException e) {
                                e.printStackTrace();
                            }


                        %>


										<script>

                                            var slideIndex1 = 1;
                                            showDivs(slideIndex1);

                                            function plusDivs(n) {
                                                showDivs(slideIndex1 += n);
                                            }

                                            function showDivs(n) {
                                                var i;
                                                var x = document.getElementsByClassName("mySlides");
                                                if (n > x.length) {
                                                    slideIndex1 = 1
                                                }
                                                if (n < 1) {
                                                    slideIndex1 = x.length
                                                }
                                                for (i = 0; i < x.length; i++) {
                                                    x[i].style.display = "none";
                                                }
                                                x[slideIndex1 - 1].style.display = "block";
                                            }


                                            var slideIndex = 0;
                                            carousel();

                                            function carousel() {
                                                var i;
                                                var x = document.getElementsByClassName("mySlides");
                                                for (i = 0; i < x.length; i++) {
                                                    x[i].style.display = "none";
                                                }
                                                slideIndex++;
                                                if (slideIndex > x.length) {
                                                    slideIndex = 1
                                                }
                                                x[slideIndex - 1].style.display = "block";
                                                setTimeout(carousel, 3000); // Change image every 2 seconds
                                            }
                                        </script>
									</span>
            </section>

            <!-- Section -->
            <section>
            </section>

        </div>
    </div>

    <!-- Sidebar -->
    <div id="sidebar">
        <div class="inner">

            <!-- Search -->
            <section id="search" class="alt">
                <form method="post" action="#">
                    <input type="text" name="query" id="query" placeholder="Search"/>
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
                    <li><a href="login.html">Admins Login</a></li>
                </ul>
            </nav>


            <!-- Section -->
            <section>
                <header class="major">
                    <h2>Get in touch</h2>
                </header>
                <p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem
                    ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus
                    aliquam.</p>
                <ul class="contact">
                    <li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
                    <li class="fa-phone">(000) 000-0000</li>
                    <li class="fa-home">1234 Somewhere Road #8254<br/>
                        Nashville, TN 00000-0000
                    </li>
                </ul>
            </section>

            <!-- Footer -->
            <footer id="footer">
                <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>.
                    Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
            </footer>

        </div>
    </div>

</div>

<!-- Scripts -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/skel.min.js"></script>
<script src="/assets/js/util.js"></script>
<!--[if lte IE 8]>
<script src="/assets/js/ie/respond.min.js"></script><![endif]-->
<script src="/assets/js/main.js"></script>

</body>
</html>