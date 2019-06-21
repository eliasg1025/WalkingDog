<?php
	function abrirConexion() {
		$usuario = "usvb4mxpzh8gbgwx";
		$contrasena = "nXIEX6rrgKLutltmNsf7";
		$servidor = "bcr0vpolusmgl6hocqjt-mysql.services.clever-cloud.com";
		$basededatos = "bcr0vpolusmgl6hocqjt";

		$conexion = mysqli_connect( $servidor, $usuario, $contrasena) or die ("No se ha podido conectar al servidor de BD");
		$db = mysqli_select_db($conexion, $basededatos) or die ( "No se ha encontrado la base de datos" );

		return $conexion;
	}

	function queries($conexion, $consulta) {
		$resultado = mysqli_query($conexion, $consulta) or die ( "Algo ha ido mal en la consulta a la base de datos");
		return $resultado;
	}

	function transaction($conexion, $consulta) {
		if (mysqli_query($conexion, $consulta)) {
		    return true;
		} else {
		    return false;
		}
	}

	function cerrarConexion($conexion) {
		mysqli_close($conexion);
	}
?>
