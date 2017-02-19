package com.vibhuti.lms;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




@WebServlet("/staff")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 100)

public class Staff extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.setContentType("text/html;charset=UTF-8");
        UploadController.fileUpload(request, response);
        // Create path components to save the file
        final Part filePart = request.getPart("file");
        final String fileName = UploadController.getFileName(filePart);

        String name = request.getParameter("name");
        String designation = request.getParameter("designation");
        String qualification = request.getParameter("qualification");
        Controller.createStaff(con, name, designation, qualification, "data/" + fileName);

        response.setContentType("text/html");
        RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher("/staffEntry.jsp");

        response.getWriter().print(" <script>\n" +
                "    alert(\"New file created at: " + "data/" + fileName + " \");" + "</script> ");

        requestDispatcher.include(request, response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
