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
 
    $consulta="select c.Id_rutina as id_rut, c.Nombre_ejercicio as ejercicio, c.Tipo_de_rutina as rutina from rutinas c where c.Id_rutina=c.Id_rutina;"; 

echo "<table border=\"1\" align=\"center\">\n";
   echo "<caption>DATOS RUTINA</caption>";
    echo "<tr align=\"center\">\n";
  
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Id_rutina</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Nombre_ejercicio</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Tipo_de_rutina</font></td>";
    

    $respuesta= $dblink->query($consulta);
    while($fila=$respuesta->fetch_object()){
        echo "<tr align=\"center\">\n<td>$fila->id_rut</td><td>$fila->ejercicio</td><td>$fila->rutina</td></tr>";
   }
     echo "</table>\n<br><br>";
    



    echo  "<center> Ponga el ID de la rutina que desea eliminar</center>";
?>
<center>
<form method="POST" action="borrarrutina.php">
    ID: <input  type="text" name="ID">
    <input type="submit" value="Eliminar">
</center>
</form>
<br>






<center>
<form method="POST" action="modificarrutina.php">
    Escriba el ID de la rutina que desee modificar<br>
<input type="text" name="id" required><br>
<input type="radio" name="cambiaren" value="1" required> Nombre_ejercicio<br />
<input type="radio" name="cambiaren" value="2"> Tipo de rutina<br />

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