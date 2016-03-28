package com.vibhuti.lms;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by admin on 22-Mar-16.
 */
public class Profile extends HttpServlet {
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

    PrintWriter printWriter;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        new Controller().getInfo(response, con);


    }

}