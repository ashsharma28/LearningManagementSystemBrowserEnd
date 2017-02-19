package com.vibhuti.lms;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

/**
 * Created by arpit on 22/1/17.
 */
public class UploadController {



    public static void fileUpload(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {


        response.setContentType("text/html;charset=UTF-8");

        // Create path components to save the file
        final Part filePart = request.getPart("file");
        final String fileName = getFileName(filePart);

        OutputStream out = null;
        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();

        try {
            out = new FileOutputStream(new File(Resources.absPath+fileName));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }



        }
        catch (FileNotFoundException fne) {
            writer.println("You either did not specify a file to upload or are "
                    + "trying to upload a file to a protected or nonexistent "
                    + "location.");
            writer.println("<br/> ERROR: " + fne.getMessage());

        }
       /* finally
        {
            if (out != null) {
                out.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }
            if (writer != null)
            {
                writer.close();
            }
        }*/

    }

    public static String getFileName(final Part part)
    {
        if(part==null)
            System.out.println("NULL");

        System.out.println(part.getHeader("content-disposition"));

        final String partHeader = part.getHeader("content-disposition");
        System.out.println(partHeader);
        for (String content : part.getHeader("content-disposition").split(";"))
        {
            if (content.trim().startsWith("filename"))
            {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
