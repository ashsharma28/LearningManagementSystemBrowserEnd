<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta charset="utf-8"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <!--[if lte IE 8]>
    <script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/main.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ie9.css"/><![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ie8.css"/><![endif]-->

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
                    <h1>XYZ School Admin</h1>
                </header>

                <!-- Content -->
                <h2 id="content">

                    <table>


                    <th>

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

                        <td>Users count :

                    <%
                        Controller controller = new Controller();
                        ResultSet resultSet = controller.getFiles(con, "SELECT COUNT(username) FROM users");


                        try {
                            while (resultSet.next()) {
                                out.append(resultSet.getString(1));
                            }

                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    %>
                        </td>


                        <td> Staff count :-
                    <%

                        ResultSet resultSet1 = controller.getFiles(con, "SELECT COUNT(name) FROM staff");


                        try {
                            while (resultSet1.next()) {
                                out.append(resultSet1.getString(1));
                            }

                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    %>

                        </td>


                        <td>
                        Event count :-

                    <%

                        ResultSet resultSet2 = controller.getFiles(con, "SELECT COUNT(title) FROM event");


                        try {
                            while (resultSet2.next()) {
                                out.append(resultSet2.getString(1));
                            }

                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    %>


                    </th>
                    </table>
                </h2>
                <!-- Elements -->
                <div class="row 200%">
                    <div class="6u 12u$(medium)">

                        <!-- Text stuff -->


                        <table>


                            <tr>


                                <td>

                                    <form action="uploadFiles.jsp">
                                        <input class="button special fit" type="submit" VALUE="Upload file for students"/>

                                    </form>
                                </td>

                                <td>
                                    <form action="missionVision.jsp">
                                        <input class="button special fit" type="submit" VALUE="Change Mission and Vision"/>

                                    </form>
                                </td>


                                <td>
                                    <form action="staffEntry.jsp">
                                        <input class="button special fit" type="submit" VALUE="Staff Data Entry"/>

                                    </form>
                                </td>





                            </tr>


                            <tr>


                                <td>

                                    <form action="noticeEntry.jsp">
                                        <input class="button special fit" type="submit" VALUE="Notice Entry for Parents Corner"/>

                                    </form>
                                </td>

                                <td>
                                    <form action="sliderImages.jsp">
                                        <input class="button special fit"type="submit" VALUE="Upload Slider images"/>

                                    </form>
                                </td>


                                <td>
                                <form action="eventAdd.jsp">
                                <input class="button special fit" type="submit" VALUE="Add Event"/>
                                </form>
                                </td>

                            </tr>


                            </tr>


                            <tr>


                                <td>
                                    <form action="gallery.jsp">
                                        <input class="button special fit" type="submit" VALUE="Add Photo Gallery images"/>

                                    </form>

                                </td>

                                <td>
                                    <form action="showContactRequests.jsp">
                                        <input class="button special fit" type="submit" VALUE="View Contact us messages"/>

                                    </form>
                                </td>

                                <td>

                                </td>


                            </tr>





                        </table>


                    </div>
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
                    <input type="text" name="query" id="query" placeholder="Search"/>
                </form>
            </section>

            <!-- Menu -->
            <nav id="menu">
                <header class="major">
                    <h2>Menu</h2>

                    <a href="logout.jsp">Logout
                    </a>


                </header>


            </nav>

            <!-- Section -->


        </div>
    </div>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]>
<script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>
</html>
<%--

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
    ResultSet resultSet = controller.getFiles(con, "SELECT COUNT(username) FROM users");


    try {
        while (resultSet.next()){
            out.append(resultSet.getString(1));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
                                        </span>

                                        <div class="infobox-content">Staff Count</div>
                                    </div>
                                </div>

                                <div class="infobox infobox-orange2">
                                    <div class="infobox-chart">
                                        <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
                                    </div>

                                    <div class="infobox-data">
                                        <span class="infobox-data-number">


<%

    ResultSet resultSet1 = controller.getFiles(con, "SELECT COUNT(name) FROM staff");


    try {
        while (resultSet1.next()){
            out.append(resultSet1.getString(1));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

                                        </span>

                                        <div class="infobox-content">Staff Count</div>
                                    </div>

                                    <div class="badge badge-success">
                                        7.2%
                                        <i class="ace-icon fa fa-arrow-up"></i>
                                    </div>
                                </div>

                                <div class="infobox infobox-blue2">
                                    <div class="infobox-progress">
                                        <div class="easy-pie-chart percentage" data-percent="42" data-size="46">
                                            <span class="percent">


<%

    ResultSet resultSet2 = controller.getFiles(con, "SELECT COUNT(title) FROM event");


    try {
        while (resultSet1.next()){
            out.append(resultSet2.getString(1));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }
%>


                                            </span>%
                                        </div>
                                    </div>
--%>
