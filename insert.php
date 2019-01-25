<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
		<meta charset="UTF-8">
		<title>
			Página de futbol
		</title>
	</head>
	<body>
		<?php
		if(isset($_POST['btn-insert'])){
			$servidor = "localhost";
			$usuari = "root";
			$password = "";
			$db = "futbol";

			$nom = $_POST['nom'];
			$localitat = $_POST['localitat'];
			$web = $_POST['web'];
			$escut = $_POST['escut'];

			
			// Create connection
			$conn = new mysqli($servidor, $usuari, $password, $db);
			$conn->set_charset("utf8");
			// Check connection
			if ($conn->connect_error) {
				die("Connexió KO: " . $conn->connect_error);
			} else {
					$sql = "INSERT INTO equips (nom, localitat, web, escut) 
							VALUES('" . $nom . "','" . $localitat . "','". $web . "','" . $escut ."')";

					if ($conn->query($sql) === TRUE) {
						echo "Se ha insertado correctamente el equipo";
					} else {
						echo "Error: " . $sql . "<br>" . $conn->error;
					}

				$conn->close();
			}
		}
		?>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="./"><i class="fas fa-home"></i>Inicio</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				  Mostrar   <i class="far fa-eye"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				  <a class="dropdown-item" href="mostrar1.php">Equipos</a>
				  <a class="dropdown-item" href="mostrar2.php">Títulos</a>
				</div>
			  </li>
			  <li>
				<a class="dropdown-item" href="insert.php"><i class="fas fa-plus-square"></i>  Insertar</a>
			  </li>
			  <li>
				<a class="dropdown-item" href="modify.php"><i class="fas fa-exchange-alt"></i>   Modificar</a>
			  </li>
			  <li>
				<a class="dropdown-item" href="delete.php"><i class="fas fa-trash-alt"></i>   Eliminar</a>
			  </li>
			</ul>
		  </div>
		</nav>
		<form method="post" action="insert.php">
		  <div class="form-group">
			<label for="exampleInputEmail1">Nom</label>
			<input type="text" class="form-control" name="nom" value="">
		  </div>
		  <div class="form-group">
			<label for="exampleInputEmail1">Localitat</label>
			<input type="text" class="form-control" name="localitat" value="">
		  </div>
		  <div class="form-group">
			<label for="exampleInputEmail1">Pàgina Web</label>
			<input type="text" class="form-control" name="web" value="">
		  </div>
		  <div class="form-group">
			<label for="exampleInputEmail1">Escut</label>
			<input type="text" class="form-control" name="escut" value="">
		  </div>
		  <input type="submit" value="INSERTAR" name="btn-insert">
		</form>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	</body>
</html>