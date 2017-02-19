<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 19-May-16
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page import="com.sun.corba.se.pept.transport.ConnectionCache" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>


<div id="mainContent" style="margin-left:35%; margin-top: 3%; ">





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

      String username = request.getParameter("username");
      String password = request.getParameter("password");

      if(username==null || password==null )response.sendRedirect("login");

      try {
        PreparedStatement preparedStatement =  con.prepareStatement("SELECT * From  users where username=?");
        preparedStatement.setString(1, username);
        ResultSet resultSet = preparedStatement.executeQuery();


          if(resultSet.next())
        {
            if(password.equals(resultSet.getString(6)) )
          {

              session.setAttribute("username", username);
              session.setAttribute("subject1", resultSet.getString(1));
              session.setAttribute("subject2", resultSet.getString(2));
              session.setAttribute("subject3", resultSet.getString(3));
              session.setAttribute("subject4", resultSet.getString(4));


              if (username.equals("admingullu"))
            {
                //BLOCK FOR CHECKING IF THE ADMIN HAS LOGGED IN
                response.sendRedirect("AdminPanel.jsp");
            }


          }
          else
                out.append("Password you entered is wrong");
        }
        else
                out.append("Invalid username.");





      } catch (SQLException e)
        {
            e.printStackTrace();
        }
    %>





</div>

</body>
</html>
