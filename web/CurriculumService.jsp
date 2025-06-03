<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<%@page import="backend.*"%>
<%@page import="backend.database.clsQuerys"%>
<%@ page session="true" %>
<%
    clsQuerys query = new clsQuerys();
    clsCurriculum curriculum = new clsCurriculum();
    curriculum.setNombre(request.getParameter("pnombre"));
    curriculum.setTelefono(request.getParameter("ptelefono"));
    curriculum.setCorreo(request.getParameter("pcorreo"));
    curriculum.setDomicilio(request.getParameter("pdomicilio"));
    
    String[] instituciones = request.getParameterValues("pinstitucion[]");
    String[] titulos = request.getParameterValues("ptitulo[]");
    String[] fechas = request.getParameterValues("pfecha[]");
    List<clsEducacion> educaciones = new ArrayList<>();
    
    for(int x=0; x<instituciones.length; x++){
        clsEducacion edu = new clsEducacion();
        edu.setInstitucion(instituciones[x]);
        edu.setTitulo(titulos[x]);
        edu.setFecha(Date.valueOf(fechas[x]));
        educaciones.add(edu);
    }
    curriculum.setEducacion(educaciones);
    
    String[] empresas = request.getParameterValues("pempresa[]");
    String[] cargos = request.getParameterValues("pcargo[]");
    String[] fechasInicio = request.getParameterValues("pfechainicio[]");
    String[] fechasFin = request.getParameterValues("pfechafin[]");
    String[] responsabilidades = request.getParameterValues("presponsabilidades[]");

    List<clsExperienciaLaboral> ExpLaborales = new ArrayList<>();
    
    for(int x=0; x<empresas.length; x++){
        clsExperienciaLaboral exp = new clsExperienciaLaboral();
        exp.setEmpresa(empresas[x]);
        exp.setCargo(cargos[x]);
        exp.setFechaInicial(Date.valueOf(fechasInicio[x]));
        exp.setFechaFinal(Date.valueOf(fechasFin[x]));
        exp.setResponsabilidades(responsabilidades[x]);
        ExpLaborales.add(exp);
    }
    curriculum.setTrabajos(ExpLaborales);
    
    if(query.fncIngresarCurriculum(curriculum)!= 0){
        response.sendRedirect("/");
    }
    %>