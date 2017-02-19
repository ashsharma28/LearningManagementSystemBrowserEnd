<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.sql.PreparedStatement" %>
<html>
<head>
  <meta charset="utf-8" />
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
          <h1>Enter Mission and Vision</h1>
        </header>

        <form action="missionVision.jsp" method="post" >
          <table>
            <tr>
              <td>Mission</td>
              <td><input type="text" name="Mission"/></td>
            </tr>
            <tr>
              <td>Vision</td>
              <td><input type="text" name="Vision"  /></td>
            </tr>

          </table>
          <br><br>
          <input type="submit" />
        </form>

      </section>

    </div>
  </div>


  <%!
    Connection con;

    public void jspInit()
    {
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

    if(request.getMethod().equalsIgnoreCase("post")) {


      String mission = request.getParameter("Mission");
      String vision = request.getParameter("Vision");

      Controller controller = new Controller();


      try {
        PreparedStatement statement = con.prepareStatement
                ("INSERT INTO missionvision (Mission,Vision ) VALUES (?, ?);");
        statement.setString(1, mission);
        statement.setString(2, vision);

        statement.execute();

        out.append("SUSSESSFULL");


      } catch (SQLException e) {
        e.printStackTrace();
        out.append(e + "");
      }

    }




  %>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>
</html>