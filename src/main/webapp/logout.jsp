
<%@ page import="com.sun.corba.se.pept.transport.ConnectionCache" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.vibhuti.lms.Controller" %>
<%@ page import="java.net.URI" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

request.getSession().invalidate();

    response.sendRedirect("index.jsp");

%>