<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro de Curriculum</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome para íconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Estilos personalizados -->
    <style>
        .form-section {
            display: none;
        }
        .form-section.active {
            display: block;
        }
        .nav-tabs .nav-link {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4"><i class="fas fa-user-tie me-2"></i>Registro de Curriculum</h1>
        
        <!-- Pestañas -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-bs-toggle="tab" href="#datosPersonales">Datos Personales</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#educacion">Educación</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#experiencia">Experiencia</a>
            </li>
        </ul>
        
        <!-- Formulario -->
        <form id="formCurriculum" action="procesarCurriculum.jsp" method="post" class="border p-4 rounded-bottom">
            <!-- Sección Datos Personales -->
            <div class="tab-content">
                <div class="tab-pane fade show active" id="datosPersonales">
                    <h3 class="mb-4">Información Básica</h3>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="nombre" class="form-label">Nombre Completo*</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                        <div class="col-md-6">
                            <label for="telefono" class="form-label">Teléfono*</label>
                            <input type="tel" class="form-control" id="telefono" name="telefono" required>
                        </div>
                        <div class="col-md-6">
                            <label for="correo" class="form-label">Correo Electrónico*</label>
                            <input type="email" class="form-control" id="correo" name="correo" required>
                        </div>
                        <div class="col-12">
                            <label for="acercaDeMi" class="form-label">Acerca de mí</label>
                            <textarea class="form-control" id="acercaDeMi" name="acercaDeMi" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                
                <!-- Sección Educación (dinámica) -->
                <div class="tab-pane fade" id="educacion">
                    <h3 class="mb-4">Formación Académica</h3>
                    <div id="educacionContainer">
                        <!-- Primer grupo de educación -->
                        <div class="educacion-group border p-3 mb-3">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label">Institución*</label>
                                    <input type="text" class="form-control" name="institucion[]" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Título Obtenido*</label>
                                    <input type="text" class="form-control" name="titulo[]" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Fecha*</label>
                                    <input type="date" class="form-control" name="fechaEducacion[]" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-outline-primary mt-2" id="btnAddEducacion">
                        <i class="fas fa-plus-circle"></i> Agregar otra institución
                    </button>
                </div>
                
                <!-- Sección Experiencia Laboral (dinámica) -->
                <div class="tab-pane fade" id="experiencia">
                    <h3 class="mb-4">Experiencia Laboral</h3>
                    <div id="experienciaContainer">
                        <!-- Primer grupo de experiencia -->
                        <div class="experiencia-group border p-3 mb-3">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label">Empresa*</label>
                                    <input type="text" class="form-control" name="empresa[]" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Cargo*</label>
                                    <input type="text" class="form-control" name="cargo[]" required>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label">Fecha Inicio*</label>
                                    <input type="date" class="form-control" name="fechaInicio[]" required>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label">Fecha Fin</label>
                                    <input type="date" class="form-control" name="fechaFin[]">
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-outline-primary mt-2" id="btnAddExperiencia">
                        <i class="fas fa-plus-circle"></i> Agregar otro trabajo
                    </button>
                </div>
            </div>
            
            <!-- Botones de navegación -->
            <div class="d-flex justify-content-between mt-4">
                <button type="button" class="btn btn-secondary" id="btnPrev" disabled>Anterior</button>
                <button type="button" class="btn btn-primary" id="btnNext">Siguiente</button>
                <button type="submit" class="btn btn-success" id="btnSubmit" style="display:none;">Enviar Curriculum</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS y dependencias -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jQuery para funcionalidad dinámica -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- Script para manejar el formulario -->
    <script>
        $(document).ready(function() {
            // Manejo de pestañas
            let currentTab = 0;
            const tabs = $('.tab-pane');
            
            // Botón Siguiente
            $('#btnNext').click(function() {
                if (validateStep(currentTab)) {
                    $(tabs[currentTab]).removeClass('show active');
                    currentTab++;
                    $(tabs[currentTab]).addClass('show active');
                    updateButtons();
                }
            });
            
            // Botón Anterior
            $('#btnPrev').click(function() {
                $(tabs[currentTab]).removeClass('show active');
                currentTab--;
                $(tabs[currentTab]).addClass('show active');
                updateButtons();
            });
            
            // Agregar más educación
            $('#btnAddEducacion').click(function() {
                const newGroup = $('.educacion-group').first().clone();
                newGroup.find('input').val('');
                $('#educacionContainer').append(newGroup);
            });
            
            // Agregar más experiencia
            $('#btnAddExperiencia').click(function() {
                const newGroup = $('.experiencia-group').first().clone();
                newGroup.find('input').val('');
                $('#experienciaContainer').append(newGroup);
            });
            
            // Validación de pasos
            function validateStep(step) {
                let valid = true;
                $(tabs[step]).find('[required]').each(function() {
                    if (!$(this).val()) {
                        $(this).addClass('is-invalid');
                        valid = false;
                    } else {
                        $(this).removeClass('is-invalid');
                    }
                });
                return valid;
            }
            
            // Actualizar botones
            function updateButtons() {
                $('#btnPrev').prop('disabled', currentTab === 0);
                $('#btnNext').toggle(currentTab < tabs.length - 1);
                $('#btnSubmit').toggle(currentTab === tabs.length - 1);
            }
        });
    </script>
</body>
</html>