<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

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

            <section>
                <header class="main">
                    <h1>Contact Messages</h1>
                </header>


                <!-- Elements -->
                <div class="row 200%">


                    <div class="table-wrapper">


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
                            ResultSet resultSet = controller.getFiles(con, "Select * from contactus ");

                            try {
                                out.append("<table border=2px>");


                                out.append("<form action=\"download.jsp\" >");

                                out.append("\n" +
                                        "<tr>\n" +
                                        "  <th>Name</th>\n" +
                                        "  <th>Email</th>\n" +
                                        "  <th>Category</th>\n" +
                                        "  <th>Mesage</th>\n" +
                                        "</tr>\n");


                                while (resultSet.next()) {
                                    out.append("<tr>");

                                    out.append("<td>");
                                    out.append(resultSet.getString(1) + "\t");
                                    out.append("</td>");


                                    out.append("<td>");
                                    out.append(resultSet.getString(2) + "\t");
                                    out.append("</td>");


                                    out.append("<td>");
                                    out.append(resultSet.getString(3) + "\t");
                                    out.append("</td>");


                                    out.append("<td>");
                                    out.append(resultSet.getString(4) + "\t");
                                    out.append("</td>");


                                    out.append("</tr>");
                                }

                                out.append("</table>");

                            } catch (SQLException e) {
                                e.printStackTrace();
                            }


                        %>
                    </div>


                </div>

            </section>

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
