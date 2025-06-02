<%-- 
    Document   : DatosGenerales
    Created on : 29/05/2025, 11:26:37 a. m.
    Author     : Dirinfo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>CV | Datos Generales</title>
    </head>
    <body >
        <div class="container">
            <h1 class="mt-4 text-center"><i class="fas fa-user-tie me-2"></i>Registro de Curriculum</h1>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <p class="nav-link active" aria-current="page" id="11">Datos</p>
                </li>
                <li class="nav-item">
                  <p class="nav-link" aria-current="page" id="12">Educación</p>
                </li>
                <li class="nav-item">
                  <p class="nav-link" aria-current="page" id="13">Experiencia</p>
                </li>
                <li class="nav-item">
                </li>
            </ul>
            <!-- Inicio Informacion general -->
            <form action="CurriculumService.jsp" method="post" class="border rounded-bottom p-4">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="1">
                    <h3>Información General</h3>
                    <div class="row">
                        <div class="col-md-6 mt-1">
                            <label for="pnombre" class="form-label">Nombre Completo*</label>
                            <input type="text" class="form-control" id="pnombre" name="pnombre" required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="ptelefono" class="form-label">Telefono*</label>
                            <input type="number" class="form-control" id="ptelefono" name="ptelefono" required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pcorreo" class="form-label">Correo*</label>
                            <input type="text" class="form-control" id="pcorreo" name="pcorreo" required>
                        </div>
                        <div class="col-md-12 mt-1">
                            <label for="pacercaDeMi" class="form-label">Acerca de mi</label>
                            <textarea class="form-control" id="pacercaDeMi" name="pacercaDeMi" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <!-- Inicio Educacion -->        
                <div class="tab-pane fade show" id="2">
                    <h3>Formación profesional</h3>
                    <div class="row">
                        <div class="col-md-6 mt-1">
                            <label for="pinstitucion" class="form-label">Institución*</label>
                            <input type="text" class="form-control" id="pinstitucion" name="pinstitucion"  required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="ptitulo" class="form-label">Título/Certificación*</label>
                            <input type="text" class="form-control" id="ptitulo" name="ptitulo"  required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pfecha" class="form-label">Fecha de obtención*</label>
                            <input type="date" class="form-control" id="pfecha" name="pfecha"  required>
                        </div>
                    </div>
                </div>
                <!-- Inicio Experiencia-->
                <div class="tab-pane fade show" id="3">
                    <h3>Experiencia Laboral</h3>
                    <div class="row">
                        <div class="col-md-6 mt-1">
                            <label for="pempresa" class="form-label">Empresa*</label>
                            <input type="text" class="form-control" id="pempresa" name="pempresa"  required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pcargo" class="form-label">Cargo*</label>
                            <input type="text" class="form-control" id="pcargo" name="pcargo"  required>
                        </div>
                        <div class="col-md-6 mt-1"> 
                            <label for="pfechainicio" class="form-label">Fecha de inicio*</label>
                            <input type="date" class="form-control" id="pfechainicio" name="pfechainicio" required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pfechafin" class="form-label">Fecha de fin*</label>
                            <input type="date" class="form-control" id="pfechafin" name="pfechafin" required>
                        </div>
                    </div>
                <!-- Inicio botones -->
                </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
                        <button type="button" class="btn btn-secondary" id="btnVolver">Volver</button>
                        <button type="button" class="btn btn-primary" id="btnSig">Siguiente</button>
                        <button type="submit" class="btn btn-success" style="display: none;" id="btnEnviar">Guardar Curriculum</button>
                    </div>
                    
            </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
        <script>
            let panelActual = 1;
            document.getElementById("btnSig").addEventListener("click", function(){
                if(panelActual<3 && panelActual>=1 && validarPasos()){
                    document.getElementById(panelActual).classList.remove("active");
                    document.getElementById(panelActual+1).classList.add("active");
                    document.getElementById(panelActual+10).classList.remove("active");
                    document.getElementById(panelActual+11).classList.add("active");
                    panelActual++;
                }
                if(panelActual===3)
                {
                    document.getElementById("btnSig").style.display = "none";
                    document.getElementById("btnEnviar").style.display = "block";             
                }

            });
            document.getElementById("btnVolver").addEventListener("click", function(){
                if(panelActual<=3 && panelActual>1){
                    document.getElementById(panelActual).classList.remove("active");
                    document.getElementById(panelActual-1).classList.add("active");
                    document.getElementById(panelActual+10).classList.remove("active");
                    document.getElementById(panelActual+9).classList.add("active");
                    panelActual--;
                }
                if(panelActual<=2)
                {
                    document.getElementById("btnSig").style.display = "block";  
                    document.getElementById("btnEnviar").style.display = "none";
                }
            });
            document.getElementById("btnEnviar").addEventListener("click", function(){
                 if(!validarPasos())
                 {
                     event.preventDefault();
                 }
             });
            function validarPasos() {
                let valid = true;
                let strPanel = '#'+panelActual;
  

                $(strPanel).find('[required]').each(function() {
                    if (!$(this).val()) {
                        $(this).addClass('is-invalid');
                        valid = false;
                    } else {
                        $(this).removeClass('is-invalid');
                    }
                });
                return valid;
            }
        </script>
    </body>
</html>
