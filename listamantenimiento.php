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
 
    $consulta="select * from mantenimiento;"; 

echo "<table border=\"1\" align=\"center\">\n";
   echo "<caption>DATOS MANTENIMIENTO</caption>";
    echo "<tr align=\"center\">\n";
  
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Id_mantenimiento</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Tipo_mantenimiento</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Tiempo_meses</font></td>";
    

    $respuesta= $dblink->query($consulta);
    while($fila=$respuesta->fetch_object()){
        echo "<tr align=\"center\">\n<td>$fila->Id_mantenimineto</td><td>$fila->Tipo_mantenimiento</td><td>$fila->Tiempo_meses</td></tr>";
   }
     echo "</table>\n<br><br>";
    echo  "<center> Ponga el ID del mantenimiento que desea eliminar</center>";
?>
<center>
<form method="POST" action="borrarmantenimiento.php">
    ID: <input  type="text" name="ID">
    <input type="submit" value="Eliminar">
</center>
</form>
<br>



<center>
<form method="POST" action="modificarmantenimiento.php">
    Escriba el ID del mantenimiento que desee modificar<br>
<input type="text" name="id" required><br>
<input type="radio" name="cambiaren" value="1" required> Tipo mantenimiento<br />
<input type="radio" name="cambiaren" value="2"> Tiempo_meses<br />

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