package com.vibhuti.lms;

import com.vibhuti.lms.Controller;
import com.vibhuti.lms.UploadController;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.*;
/**
 * Servlet implementation class lms.servlets.Homework
 */
@WebServlet("/homework")
@MultipartConfig(fileSizeThreshold=1024*1024*10,maxFileSize=1024*1024*50,maxRequestSize=1024*1024*100)  

public class Homework extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	 {
		 Connection con=null;
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
		 } catch (ClassNotFoundException e) {
			 e.printStackTrace();
		 } catch (SQLException e) {
			 e.printStackTrace();
		 }
		 response.setContentType("text/html;charset=UTF-8");

		 UploadController.fileUpload(request,response);


		// Create path components to save the file
		final Part filePart = request.getPart("file");
		final String fileName = UploadController.getFileName(filePart);

		 String title = request.getParameter("Title");
		 String subject = request.getParameter("subjects");
		 System.out.println("Title = "+title+" "+" subject = "+subject);
		 int cls=Integer.parseInt(request.getParameter("class"));
		 Controller.createHomework(con,title,subject,cls, "data/" + fileName);


		 response.setContentType("text/html");
		 RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher("/uploadFiles.jsp");

		 response.getWriter().print(" <script>\n" +
				 "    alert(\"New file created at: " + "data/" + fileName + " \");" + "</script> ");

		 requestDispatcher.include(request, response);

	 }


}
