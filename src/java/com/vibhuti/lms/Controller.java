package com.vibhuti.lms;

import javax.jws.Oneway;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Objects;

/**
 *A common controller class for handling CRUD operations
 * Created by admin on 22-Mar-16.
 */
public class Controller {

    public void createFacultyAccount(Connection con, String firstName, String lastName, String resumeAddress, String sex, int age){
        try {
            PreparedStatement statement = con.prepareStatement("INSERT INTO facultyInfo (firstName, lastName, resumeAddress, sex, age ) VALUES (? ,? , ? , ? , ?);");
            statement.setString(1, firstName);
            statement.setString(2,lastName);
            statement.setString(3, resumeAddress);
            statement.setString(4, sex);
            statement.setInt(5, age);

            statement.execute();



        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public ResultSet readFacultyAccount(Connection con, String query ) {
        ResultSet resultSet = null;


        try {

            PreparedStatement preparedStatement = preparedStatement = con.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resultSet;
    }


    /**
     *
     * @param con is the Connection object
     * @param query is the SQL query that is sent to MySQL
     * @return
     */

    public boolean updateFacultyInfoWithQuery(Connection con, String query){
        int i =0;
        try {
            Statement statement = con.createStatement();
            i = statement.executeUpdate(query);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(i==0)return false;
        else return true;
    }



    /*

    ADIMN:
    DONE - add users C
    DONE - retrieving the information R
    DONE  -update users info U
    TODO -delete user D
    */


    /*

    Faculty members can
    TODO view- as Profiles R
    TODO update  U TODO their personal and professional information

    */




    public boolean deleteFacultyWithQuery(Connection con, String query){
        int i =0;
        try {
            Statement statement = con.createStatement();
            i = statement.executeUpdate(query);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(i==0)return false;
        else return true;
    }


    /**
     * This is an wrapper on readFacultyAccount that prints the complete table of MySql in <code>HttpServletResponse</code>
     * @param response is the HttpServletResponse of the Servlet that is calling this method
     * @param con is the Connection object
    */
    public void getInfo(HttpServletResponse response, Connection con){

        try {
            PrintWriter printWriter = response.getWriter();

            printWriter = response.getWriter();
            response.setContentType("text/html");
            Controller controller = new Controller();
            ResultSet resultSet = controller.readFacultyAccount(con, "SELECT * FROM facultyinfo");


            printWriter.append("<table border=1px>");
            while (resultSet.next()){
                printWriter.append("<tr>");

                printWriter.append("<td>");
                printWriter.append(resultSet.getString(1)+ "\t");
                printWriter.append("</td>");

                printWriter.append("<td>");
                printWriter.append(resultSet.getString(2)+ "\t");
                printWriter.append("</td>");

                printWriter.append("<td>");
                printWriter.append(resultSet.getString(3)+ "\t");
                printWriter.append("</td>");

                printWriter.append("<td>");
                printWriter.append(resultSet.getString(4)+ "\t");
                printWriter.append("</td>");

                printWriter.append("<td>");
                printWriter.append(resultSet.getInt(5) + "\n");
                printWriter.append("</td>");

                printWriter.append("</tr>");
            }

            printWriter.append("</table>");
            printWriter.append("\n" + "<h3>end</h3>");


        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}





