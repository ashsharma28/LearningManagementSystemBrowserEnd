package com.vibhuti.lms;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Created by admin on 22-Mar-16.
 */
public class LoginServlet extends HttpServlet {

    Connection con;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }


    PrintWriter ashish;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        ashish = response.getWriter();

        try {
            PreparedStatement preparedStatement =  con.prepareStatement("SELECT password From  users where username=?");
            preparedStatement.setString(1, username);


            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){

                if(password.equals(resultSet.getString(1)) ){
                    if (username.equals("admingullu")){//BLOCK FOR CHECKING IF THE ADMIN HAS LOGGED IN

                        ashish.append("<HTML><body><center><h1>Hello Admin </h1></center>");
                        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/AdminPanel.html");
                        requestDispatcher.include(request, response);
                        ashish.append("</body></HTML>");
                    }
                    else{//BLOCK FOR CHECKING IF THE OTHER USER HAS LOGGED IN

                        ashish.append("<HTML><body><center><h1>Welcome Prof. " + username + " </h1></center>");
                        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/User.html");
                        requestDispatcher.include(request, response);
                        ashish.append("</body></HTML>");
                    }

                }
                else ashish.append("Password you entered is wrong");
            }
            else ashish.append("Invalid username.");





        } catch (SQLException e) {
            e.printStackTrace();
        }




    }
}
