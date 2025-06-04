<%-- 
    Document   : DatosGenerales
    Created on : 29/05/2025, 11:26:37 a. m.
    Author     : Dirinfo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <title>CV | Datos Generales</title>
    </head>
    <body >
        <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom"> 
            <div class="col-md-3 mb-2 mb-md-0">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16"><path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4"/></svg>                
            </div> 
                    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0"> 
                        <li>
                            <a href="/PFcv/index.jsp" class="nav-link px-2 link-body-emphasis">
                                Lista Curriculums 
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16"><path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5"/></svg>
                            </a>
                        </li> 
                        <li>
                            <a href="/PFcv/IngresarCurriculum.jsp" class="nav-link px-2 link-secondary">
                                Agregar Curriculum
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16"><path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/><path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/></svg>
                            </a>
                        </li> 
                    </ul> 

        </header>
    </div>
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
                            <input type="number" class="form-control" minlength="8" maxlength="8" id="ptelefono" name="ptelefono" required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pcorreo" class="form-label">Correo*</label>
                            <input type="text" class="form-control" id="pcorreo" name="pcorreo" required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pdomicilio" class="form-label">Domicilio*</label>
                            <input type="text" class="form-control" id="pdomicilio" name="pdomicilio" required>
                        </div>
                    </div>
                </div>
                <!-- Inicio Educacion -->        
                <div class="tab-pane fade show" id="2">
                    <h3>Formación profesional</h3>
                    <div id="edu-container">
                    <div class="row educacion-grupo border rounded p-2 pb-3 mt-2">
                        <div class="col-md-6 mt-1">
                            <label for="pinstitucion" class="form-label">Institución*</label>
                            <input type="text" class="form-control" name="pinstitucion[]"  required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="ptitulo" class="form-label">Título/Certificación*</label>
                            <input type="text" class="form-control"name="ptitulo[]"  required>
                        </div>
                        <div class="col-md-6 mt-1">
                            <label for="pfecha" class="form-label">Fecha de obtención*</label>
                            <input type="date" class="form-control" name="pfecha[]"  required>
                        </div>
                    </div>
                    </div>
                    <button type="button" class="btn btn-primary mt-2" id="btnAgregarEdu">Agregar +</button>
                </div>
                <!-- Inicio Experiencia-->
                <div class="tab-pane fade show" id="3">
                    <h3>Experiencia Laboral</h3>
                    <div id="expLaboral-container">
                        <div class="row expLaboral-grupo border rounded p-2 pb-3 mt-2">
                            <div class="col-md-6 mt-1">
                                <label for="pempresa" class="form-label">Empresa*</label>
                                <input type="text" class="form-control" name="pempresa[]"  required>
                            </div>
                            <div class="col-md-6 mt-1">
                                <label for="pcargo" class="form-label">Cargo*</label>
                                <input type="text" class="form-control" name="pcargo[]"  required>
                            </div>
                            <div class="col-md-6 mt-1"> 
                                <label for="pfechainicio" class="form-label">Fecha de inicio*</label>
                                <input type="date" class="form-control"  name="pfechainicio[]" required>
                            </div>
                            <div class="col-md-6 mt-1">
                                <label for="pfechafin" class="form-label">Fecha de fin*</label>
                                <input type="date" class="form-control" name="pfechafin[]" required>
                            </div>
                            <div class="col-md-12 mt-1">
                                <label for="presponsabilidades" class="form-label">Responsabilidades*</label>
                                <textarea type="text" class="form-control" name="presponsabilidades[]" required ></textarea>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary mt-2" id="btnAgregarExpLaboral">Agregar +</button>
                </div>
                <!-- Inicio botones -->
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
            let eduActual = 1;
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
            $('#btnAgregarEdu').click(function(){
                let nuevoEdu = $('.educacion-grupo').first().clone();
                nuevoEdu.find('input').val('');
                $('#edu-container').append(nuevoEdu);
            });
            $('#btnAgregarExpLaboral').click(function(){
                let nuevoExpLaboral = $('.expLaboral-grupo').first().clone();
                nuevoExpLaboral.find('input').val('');
                nuevoExpLaboral.find('textarea').val('');
                $('#expLaboral-container').append(nuevoExpLaboral);
            });
        </script>
    </body>
</html>
