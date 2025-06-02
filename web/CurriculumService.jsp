<%@ page session="true" %>
<%
    int paginaId = Integer.parseInt(request.getParameter("paginaId"));
    switch(paginaId)
    {
        case 1:
            String[] parametros = {"pnombre", "ptelefono","pcorreo", "pacercaDeMi"};
            for(String parametro:parametros){
                String valor = request.getParameter(parametro);
                if(valor!=null){
                    session.setAttribute(parametro, valor);
                }
            }
        
    }
    %>