<?php
	require_once("funciones/funciones.php");


	if(isset($_POST['nombres'])) {
		$conexion = abrirConexion();

		$consulta = "INSERT INTO paseador (nombres, edad, celular, email, password, direccion, dia, mes, anho ) ";
		$consulta.= "VALUES ('".$_POST['nombres']."', '".$_POST['edad']."', '".$_POST['celular']."', '".$_POST['email']."','".$_POST['password']."','".$_POST['direccion']."','".$_POST['dia']."','".$_POST['mes']."',  '".$_POST['anho']."')"; 

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
		body {
			background-color: #DCDCDC
		}
	</style>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light  " style="background-color: #A52A2A;">
		<td><img src="Img/dog4.jpg" style="width: 1000px"></td>

		<div class="form-group">
			<div class="form-group">
				<a href="¿Quiénes somos?.html" class="btn btn-primary">¿Quíenes somos?</a>
				<a href="Inicio Sesión.html" class="btn btn-primary">Iniciar sesión</a>
			</div>
		</div>
	</nav>

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	</nav>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1>REGISTRO DE PASEADORES</h1>
				<form action="paseadores1.php" method="post">
					<div class="form-group">
						<label for="exampleFormControlInput1">Nombres</label>
						<input type="nombre" class="form-control" name="nombres">

					</div>

					<div class="form-group">
						<label for="exampleFormControlInput1">Edad</label>
						<input type="edad" class="form-control" name="edad" </div> <div class="form-group">
						<label for="exampleInputPassword1">Telefono/celular</label>
						<input type="telefono/celular" class="form-control" name="celular" </div> <form>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail4">Email</label>
								<input type="email" class="form-control" placeholder="name@example.com" name="email">
							</div>
							<div class="form-group col-md-6">
								<label for="inputPassword4">Password</label>
								<input type="password" class="form-control" placeholder="Password" name="password">
								<small id="passwordHelpInline" class="text-muted">
									Must be 8-20 characters long.
								</small>

							</div>
						</div>
						<div class="form-group">
							<label for="inputAddress">Dirección</label>
							<input type="text" class="form-control" name="direccion">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Fecha de nacimiento</label>
						</div>
						<form>
							<div class="row">
								<div class="col">
									<input type="text" class="form-control" placeholder="Día" name="dia">
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Mes" name="mes">
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Año" name="anho">
								</div>
							</div>
						</form>

						<!-- hay diferentes tipos de inputs para mandar data, se pueden usar selects para seleccionar algun valor de una lista, un textarea si el texto a llenar es muy grande y muchos mas -->
						<div class="form-group">
							<label for="exampleFormControlSelect1">Sexo</label>
							<select class="form-control" id="exampleFormControlSelect1">
								<option>Masculino</option>
								<option>Femenino</option>
								<option>Otros</option>
							</select>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Departamento</label>
							<form>
								<div class="row">
									<div class="col">
										<input type="text" class="form-control" placeholder="Departamento">
									</div>
									<div class="col">
										<input type="text" class="form-control" placeholder="Provincia">
									</div>
									<div class="col">
										<input type="text" class="form-control" placeholder="Distrito">
									</div>
								</div>
								<div class="form-group">
									<label for="exampleFormControlSelect1">¿Tiene experiencia cuidando perros?</label>
									<select class="form-control" id="exampleFormControlSelect1">
										<option>SÍ</option>
										<option>NO</option>
									</select>
								</div>
							</form>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">Modo de cobro</label>
						<select class="Seleccione" id="exampleFormControlSelect1">
							<option>Tarjeta de crédito</option>
							<option>Efectivo</option>
						</select>
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Acepto las condiciones y restricciones del
							sitio</label>
					</div>
					<button type="submit" class="btn btn-primary">Guardar</button>
					<!-- el button type "submit" es aquel que envia la información del formulario a el action del formulario para ser procesada -->
					<a href="perfil_de_paseadores.php" class="btn btn-primary">Siguiente</a>



				</form>
				<!-- acaba el formulario -->
			</div>

		</div>
	</div>

	</form>
</body>

</html>