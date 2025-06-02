<%@page import="backend.clsExperienciaLaboral"%>
<%@page import="backend.clsEducacion"%>
<%@page import="backend.clsCurriculum"%>
<%@page import="backend.database.clsQuerys"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Procesar datos principales
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    String correo = request.getParameter("correo");
    String acercaDeMi = request.getParameter("acercaDeMi");
    
    // Crear objeto curriculum
    clsCurriculum curriculum = new clsCurriculum();
    curriculum.setNombre(nombre);
    curriculum.setTelefono(telefono);
    curriculum.setCorreo(correo);
    curriculum.setDomicilio(acercaDeMi);
    
    // Procesar educación (arreglo de parámetros)
    String[] instituciones = request.getParameterValues("institucion[]");
    String[] titulos = request.getParameterValues("titulo[]");
    String[] fechasEducacion = request.getParameterValues("fechaEducacion[]");
    
    List<clsEducacion> educaciones = new ArrayList<>();
    if (instituciones != null) {
        for (int i = 0; i < instituciones.length; i++) {
            clsEducacion edu = new clsEducacion();
            edu.setInstitucion(instituciones[i]);
            edu.setTitulo(titulos[i]);
            edu.setFecha(Date.valueOf(fechasEducacion[i]));
            educaciones.add(edu);
        }
    }
    curriculum.setEducacion(educaciones);
    
    // Procesar experiencia laboral
    String[] empresas = request.getParameterValues("empresa[]");
    String[] cargos = request.getParameterValues("cargo[]");
    String[] fechasInicio = request.getParameterValues("fechaInicio[]");
    String[] fechasFin = request.getParameterValues("fechaFin[]");
    
    List<clsExperienciaLaboral> experiencias = new ArrayList<>();
    if (empresas != null) {
        for (int i = 0; i < empresas.length; i++) {
            clsExperienciaLaboral exp = new clsExperienciaLaboral();
            exp.setEmpresa(empresas[i]);
            exp.setCargo(cargos[i]);
            exp.setFechaInicial(Date.valueOf(fechasInicio[i]));
            if (fechasFin != null && fechasFin[i] != null && !fechasFin[i].isEmpty()) {
                exp.setFechaFinal(Date.valueOf(fechasFin[i]));
            }
            experiencias.add(exp);
        }
    }
    curriculum.setTrabajos(experiencias);
    
    // Llamar a tu método para guardar en BD
    int resultado = new clsQuerys().fncIngresarCurriculum(curriculum);
    
    // Redireccionar según resultado
    if (resultado > 0) {
        response.sendRedirect("index.jsp?curriculumId=" + resultado);
    } else {
        response.sendRedirect("error.jsp");
    }
%>