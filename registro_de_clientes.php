
<?php
  require_once("funciones/funciones.php");
  

  if(isset($_POST['nombres'])) {
    $conexion = abrirConexion();

    $consulta = "INSERT INTO cliente (nombres, direccion, edad, celular, email) ";
    $consulta.= "VALUES ('".$_POST['nombres']."', '".$_POST['direccion']."', '".$_POST['edad']."', '".$_POST['celular']."','".$_POST['email']."')";

    $bandera = transaction($conexion, $consulta);

    cerrarConexion($conexion);
  }
?>
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
       <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
 
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
<form action="registro_de_clientes.php" method="post">
    <div class="form-group">

    <label for="exampleFormControlInput1">Nombres</label>
    <input type="nombre" class="form-control" name="nombres">
</div>
    <div class="form-group">

    <label for="exampleFormControlInput1">Dirección</label>
    <input type="dirección" class="form-control" name="direccion">
  <div class="form-group">
    <label for="exampleFormControlInput1">Edad</label>
    <input type="edad" class="form-control" name="edad"> 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Telefono/celular</label>
    <input type="telefono/celular" class="form-control" name="celular">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="email" class="form-control" name="email" placeholder="name@example.com">
  </div>
<div class="form-group">
    <label for="exampleFormControlSelect1">Modo de pago</label>
    <select class="Seleccione" id="exampleFormControlSelect1">
      <option>Tarjeta de crédito</option>
      <option>Efectivo</option>
    </select>
  </div>
 <button type="submit" class="btn btn-primary">Guardar</button>
  <a href="registroclientes2.html" class="btn btn-primary">siguiente</a>
 
 </form>
       
  </body>
</html>