package com.vibhuti.lms.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
import com.google.appengine.api.utils.SystemProperty;
*/


public class ViewAndAnalysisFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession(false);

        String info = request.getServletPath();

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setHeader("Expires", "0"); // Proxies.


        System.out.println("Ashish" + info);


        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        //////////SECURE ZONE -- SESSION CHECKING//////////////
        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        ////////////////////////////////////////////////Starts

        if (
                info.contains("AdminPanel") ||
                        info.contains("uploadFiles") ||
                        info.contains("staffEntry") ||
                        info.contains("missionVision") ||
                        info.contains("noticeEntry") ||
                        info.contains("eventAdd") ||
                        info.contains("gallery.jsp") ||
                        info.contains("showContactRequests") ||
                        info.contains("sliderImages")
                ) {
            if (session == (null))
            {////////SAME THING////////////////
                response.setContentType("text/html");
                RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/login.html");
                response.getWriter().print(" <script>\n" +
                        "    alert(\"Please login to continue\");" + "</script> ");
                requestDispatcher.include(request, response);
                System.out.println("ASHISH22222222222");
                return;
                ////////SAME THING////////////////
            } else {

                if(session.getAttribute("username") == null){
                    ////////SAME THING////////////////
                    response.setContentType("text/html");
                    RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/login.html");
                    response.getWriter().print(" <script>\n" +
                            "    alert(\"Please login to continue\");" + "</script> ");
                    requestDispatcher.include(request, response);
                    System.out.println("ASHISH22222222222");
                    return;
                    ////////SAME THING////////////////
                }
                else if (session.getAttribute("username").equals("admingullu")) {
                    System.out.println("ASHISH11111111111");
                    chain.doFilter(req, resp);
                    return;
                } else {////////SAME THING////////////////
                    response.setContentType("text/html");
                    RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/login.html");
                    response.getWriter().print(" <script>\n" +
                            "    alert(\"Please login to continue\");" + "</script> ");
                    requestDispatcher.include(request, response);
                    System.out.println("ASHISH22222222222");
                    return;
                    ////////SAME THING////////////////
                }
            }
        }


        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        //////////SECURE ZONE -- SESSION CHECKING//////////////
        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        ////////////////////////////////////////////////Ends


        //IF USER IS ALREADY LOGGED IN AND TRYING TO ACCESS THE LOGIN PAGE
        if (info.contains("login.html")) {
            if (session == null) {
                chain.doFilter(req, resp);
                System.out.println("First time logged in to website");
                return;
            } else {
                if (session.getAttribute("username") == null) {
                    chain.doFilter(req, resp);
                    System.out.println("First time logged in to website");
                    return;
                } else {
                    if (session.getAttribute("username").equals("admingullu")) {
                        response.setContentType("text/html");
                        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/AdminPanel.jsp");
                        response.getWriter().print(" <script>\n" +
                                "    alert(\"You are already logged in!!\");" + "</script> ");
                        requestDispatcher.include(request, response);
                        System.out.println("ASHISH333333333");
                        return;
                    } else {
                        chain.doFilter(req, resp);
                        System.out.println("First time logged in to website");
                        return;
                    }

                }
            }

        }


        chain.doFilter(req, resp);
        System.out.println("ASHISH5555555");
        return;

    }

    ServletContext servletContext;
    Connection con;
    PrintWriter printWriter;

    public void init(FilterConfig config) throws ServletException {

        try {
            servletContext = config.getServletContext();


            String url;

            {
                Class.forName("com.mysql.jdbc.Driver");
                url = "jdbc:mysql://localhost:3306/test";

                // jdbc:mysql://ip-address-of-google-cloud-sql-instance:3306/guestbook?user=root
            }


            con = DriverManager.getConnection(url, "", "");


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


}
