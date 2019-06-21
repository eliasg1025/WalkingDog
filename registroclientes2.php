<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <title>tienda online</title>
    <style>
     
body{
  background-color: #DCDCDC
}


    </style>
  </head>
  
  <body>
     <nav class="navbar navbar-expand-lg navbar-light  " style="background-color: #A52A2A;"> 
       <td><img src="Img/dog4.jpg" style="width: 1000px"></td>

  <div class="form-group">
       <div class="form-group">
        <right>
          <a href="¿Quiénes somos?.html" class="btn btn-primary">¿Quíenes somos?</a> 
      <a href="Inicio Sesión.html" class="btn btn-primary">Iniciar sesión</a>
         </right>
</nav>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>
<br>
<div class="container">
  <div class="row">
<div class="col-md-6 offset-md-3">
<h1>REGISTRO DE CLIENTES</h1>
<form action="inicio.html">
  <div class="form-group">
    <label for="exampleFormControlSelect1">Número de mascotas</label>
    <select class="Seleccione" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>Más de 3</option>

    </select>
  </div>

    <div class="form-group">

    <label for="exampleFormControlInput1">Datos de la(s) mascota(s):</label>
    <form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputNombre">Nombre</label>
      <input type="nombre" class="form-control" id="inputNombre" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputRaza">Raza</label>
      <input type="raza" class="form-control" id="inputRaza" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputFecha">Fecha de nacimiento</label>
      <input type="Fecha" class="form-control" id="inputFecha"  placeholder="dd/mm/aaaa">
    </div>
    <div class="form-group col-md-6">
      <label for="inputDatos">Enfermedad/Incapacidad</label>
      <input type="Datos" class="form-control" id="inputDatos" >
    </div>
  </div>
</div>
</form>
<div class="form-group">

    <label for="exampleFormControlInput1">Perfil del paseador de interés:</label>
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
    Características
  </button>
  <div class="dropdown-menu dropdown-menu-right">
    <button class="dropdown-item" type="button">Sexo</button>
    <button class="dropdown-item" type="button">Edad</button>
    <button class="dropdown-item" type="button">Dirección</button>
    <button class="dropdown-item" type="button">Zona de paseo</button>
    <button class="dropdown-item" type="button">Calificaciones</button>
  </div>
</div>
</div>
<a href="clientes3.php" class="btn btn-primary">Siguiente</a>

  </body>
</html>