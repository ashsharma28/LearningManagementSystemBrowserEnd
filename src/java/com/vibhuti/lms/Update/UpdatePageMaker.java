package com.vibhuti.lms.Update;

import com.vibhuti.lms.Controller;

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
public class UpdatePageMaker extends HttpServlet {
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        response.setContentType("text/html");
        new Controller().getInfo(response, con);

        PrintWriter printWriter = response.getWriter();

        printWriter.append("<h4> Enter the details for updating values: </h4> <p></p>");

        printWriter.append("<form action=\"/updateValues\" method=\"get\">");

                printWriter.append("Update the value in column : " +
                "<select name=\"columnName\" >" +
                "<option>firstName</option>" +
                "<option>lastName</option>" +
                "<option>resumeAddress</option>" +
                "<option>sex</option>" +
                "<option>age</option>" +
                "</select>" );


        printWriter.append(" \b with new Value : <input type=\"text\" name=\"newValue\"> WHERE Resume Address " +
                ": <input type=\"text\" name=\"resumeAddress\">" +
                "<p></p>" +
                " <input type=\"submit\" >" +
                " </form>");




    }
}
