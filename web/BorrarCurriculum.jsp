<%-- 
    Document   : BorrarCurriculum
    Created on : 4/06/2025, 12:38:47 a. m.
    Author     : skyee
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backend.database.clsQuerys"%>
<%
    int id = Integer.parseInt(request.getParameter("Id"));
    clsQuerys query = new clsQuerys();
    query.DeleteCurriculum(id);
    response.sendRedirect("/PFcv/index.jsp");
%>