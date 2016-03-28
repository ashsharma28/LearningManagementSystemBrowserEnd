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
 * Created by admin on 23-Mar-16.
 */
public class UpdateValuesServlet extends HttpServlet {
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
        PrintWriter printWriter = response.getWriter();

        String oldValue = request.getParameter("oldValue");
        String newValue = request.getParameter("newValue");
        String resumeAddress = request.getParameter("resumeAddress");
        String columnName = request.getParameter("columnName");

        boolean b = new Controller().updateFacultyInfoWithQuery(con,
                "UPDATE facultyinfo SET " + columnName + " = \"" + newValue + "\" WHERE resumeAddress = \"" + resumeAddress + "\"");

        printWriter.append("<h2>");
        if (b) printWriter.append("Successful");
        else printWriter.append("Failed! Some error!, Kindly retry");
        printWriter.append("</h2>");




    }
}
