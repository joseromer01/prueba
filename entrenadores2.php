<!DOCTYPE html>
<html>
<head>
    <title>Black_Fit</title>
</head>

<body bgcolor="#DCDCDC">
<center><h1><hr>---- BLACK FIT ----<hr>
    El mejor gimnasio de la ciudad
</h1>
</center>
<center><img src="imagenes\fitt.jpg" width="230" border="2"></center><br>
<?php

    $db_name = "black_fit";
    $db_user = "gym";
    $db_pass = "123456";

    $dblink = new mysqli('localhost', $db_user, $db_pass, $db_name);
    if ($dblink->connect_error) {
      die('Error al conectar a la Base de Datos (' . $dblink->connect_errno . ') '. $dblink->connect_error);
    }

    $nombre= $_POST["nombre"];
    $apellido= $_POST["apellido"];
    $genero= $_POST["genero"];
    $fecha_nacimiento= $_POST["fecha_nacimiento"];
    $fecha_ingreso= $_POST["fecha_ingreso"];
    $fecha_fin= $_POST["fecha_fin"];
    $avenida = $_POST["avenida"];
    $calle = $_POST["calle"];
    $barrio = $_POST["barrio"];
    $telefono= $_POST["telefono"];
    $correo_electronico= $_POST["correo_electronico"];
    


    $nueva = "insert into clientes values(null,'$nombre', '$apellido', '$genero','$fecha_nacimiento', '$fecha_ingreso');";
    $resultado = $dblink->query($nueva);
    $id = $dblink->insert_id;

    $nueva2 = "insert into direccion_cliente values('$id','$avenida', '$calle');";
    $resultado2 = $dblink->query($nueva2);

    $nueva3 = "insert into barrio_cliente values('$id','$barrio');";
    $resultado3 = $dblink->query($nueva3);

    $nueva4 = "insert into telefono_cliente values('$id','$telefono');";
    $resultado4 = $dblink->query($nueva4);

    $nueva5 = "insert into correo_cliente values('$id','$correo_electronico');";
    $resultado5 = $dblink->query($nueva5);




    $dblink->close();
    echo "Los datos han sido adicionados";
   ?>
   <br>
   <a href="index.php"><< Volver al inicio</a>
</body>
-</html>
v