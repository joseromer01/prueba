<!DOCTYPE html>
    <html>
    <head>
        <title>Black_Fit</title>
    </head>

    <body bgcolor="#DCDCDC">
        <center><h1><hr><hr>---- BLACK FIT ----<hr><hr>
            "El mejor gimnasio de la ciudad"
        </h1>
    </center>
    <center><img src="imagenes\fitt.jpg" width="230" border="2"></center><br>
    <center><h2>.- Bienvenido -.</h2><br></center>


   <?php
    // Variables de la Base de datos
    $db_name = "black_fit";
    $db_user = "gym";
    $db_pass = "123456";
    // Abrir la conexión a la base
    echo "Conectando a la base de datos $db_name ";
    echo "con el usuario $db_user ...<br />\n";
    $dblink = new mysqli('localhost', $db_user, $db_pass, $db_name);
    // La conexión está en el objeto $dblink
    if ($dblink->connect_error) {
      die('Error al conectar a la Base de Datos (' . $dblink->connect_errno . ') '. $dblink->connect_error);
    }
    $ver_base = mysqli_get_server_info($dblink);
    echo "Conectado a la base $ver_base<br /><br>";
 
    $consulta="select c.Id_entrenador as id_entrenador_entrenador, c.Nombre as nombre_entrenador, c.Apellido as apellido_entrenador, c.Genero as genero_entrenador, c.Fecha_nac as fecha_nac_entrenador, c.Fecha_ingreso as fecha_ingreso_entrenador, b.Avenida as ave, b.Calle as calle_entrenador, e.Barrio as barrio_entrenador, t.Telefono as telefono_entrenador, x.Correo as correito from entrenadores c, direccion_entrenador b, barrio_entrenador e, telefono_entrenador t, correo_entrenador x where b.Id_entrenador = e.Id_entrenador and t.Id_entrenador=c.Id_entrenador and e.Id_entrenador=c.Id_entrenador and x.Id_entrenador=c.Id_entrenador;"; 

echo "<table border=\"1\" align=\"center\">\n";
   echo "<caption>DATOS ENTRENADOR</caption>";
    echo "<tr align=\"center\">\n";
  
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Id_cliente</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Nombre</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Apellido</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Genero</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Fecha_nac</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Fecha_ingreso</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Avenida</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Calle</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Barrio</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Teléfono</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Correo</font></td>\n";
  
    echo "</tr>\n";


    $respuesta= $dblink->query($consulta);
    while($fila=$respuesta->fetch_object()){
        echo "<tr align=\"center\">\n<td>$fila->id_entrenador_entrenador</td><td>$fila->nombre_entrenador</td><td>$fila->apellido_entrenador</td><td>$fila->genero_entrenador</td><td>$fila->fecha_nac_entrenador</td><td>$fila->fecha_ingreso_entrenador</td><td>$fila->ave</td><td>$fila->calle_entrenador</td><td>$fila->barrio_entrenador</td><td>$fila->telefono_entrenador</td><td>$fila->correito</td></tr>";
   }
     echo "</table>\n<br><br>";
    



    echo  "<center> Ponga el ID de la persona que desea eliminar</center>";
?>
<center>
<form method="POST" action="borrarentrenador.php">
    ID: <input  type="text" name="ID">
    <input type="submit" value="Eliminar">
</center>
</form>
<br>






<center>
<form method="POST" action="modificarentrenador.php">
    Escriba el ID de la persona que desee modificar<br>
<input type="text" name="id" required><br>
<input type="radio" name="cambiaren" value="1" required> Nombre<br />
<input type="radio" name="cambiaren" value="2"> Apellido<br />
<input type="radio" name="cambiaren" value="3"> Genero <br />
<input type="radio" name="cambiaren" value="4"> Fecha_nac <br />
<input type="radio" name="cambiaren" value="5"> Fecha_ingreso <br />


<input type="text" name="cambiarpor" required>
<input type="submit" name="Confirmar">
</center>
</form>
<center><br>
<h3><a href="index.php"> << volver atrás</a></h3>
</center>



<br><br><br><br><br><br><br><br><br>

</body>
</html>