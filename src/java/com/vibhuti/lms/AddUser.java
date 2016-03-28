package com.vibhuti.lms;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by admin on 22-Mar-16.
 */
public class AddUser extends HttpServlet {


    Connection con;
    Controller controller;

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

        controller = new Controller();
    }


    PrintWriter ashish;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String resumeAddress = request.getParameter("resumeAddress");
        String sex = request.getParameter("sex");
        int age = Integer.parseInt(request.getParameter("age"));


        controller.createFacultyAccount(con , firstName, lastName , resumeAddress , sex , age);

        ashish = response.getWriter();

        ashish.append("<h1>Successful</h1>");
    }

}
