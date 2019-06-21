<?php
	require_once("funciones/funciones.php");
	$conexion = abrirConexion();
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
	<title>TheWalkingDog</title>
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

	<ul class="navbar-nav mr-auto">
		<li class="nav-item active">
		</li>
	</ul>

	<br>
	<form action="clientes3.php">
		<div class="container-fluid">
			<form>
				<div class="form-row">
					<div class="col-3">
						<input type="text" class="form-control" placeholder="Pon nombre" name="nombre">
					</div>
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

				</div>
			</form>

			<br>
			<div class="row">
				<div class="col-md-12">

					<p align="center"><a href="registro_de_clientes.php">Nuevo registro</a></p>
					<br>
					<table class="table table-bordered table-hover" align="center" width="80%">
						<tr>
							<th width="50px">#</th>
							<th>Nombres</th>
							<th>Apellidos</th>
							<th>email</th>
							<th> </th>
							<th></th>
						</tr>
						<?php
							if(isset($_GET['nombre'])) {
								$consulta = "SELECT * FROM servicio_cliente WHERE nombre = '".$_GET['nombre']."' ";
								$resultado = queries($conexion, $consulta);
								$i = 1;
								while ($columna = mysqli_fetch_array($resultado))
								{
									echo "
										<tr>
										<td>".$i."</td>
										<td>".$columna['nombre']."</td>
										<td>".$columna['apellido']."</td>
										<td>".$columna['correo']."</td>
								
										</tr>
									";
									$i++;
								}
								cerrarConexion($conexion);

							} else {
								$consulta = "SELECT * FROM servicio_cliente";
								$resultado = queries($conexion, $consulta);
								$i = 1;
								while ($columna = mysqli_fetch_array($resultado))
								{
									echo "
										<tr>
										<td>".$i."</td>
										<td>".$columna['nombre']."</td>
										<td>".$columna['apellido']."</td>
										<td>".$columna['correo']."</td>
										

										</tr>
									";
									$i++;
								}
								cerrarConexion($conexion);
							}
							?>
					</table>
				</div>
			</div>
		</div>

		<br>
		<br>
		<br>
		<a type="submit" href="index.php" class="btn btn-primary">Ir a inicio></a>


</body>


</html>