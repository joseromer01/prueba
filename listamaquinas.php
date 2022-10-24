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
 
    $consulta="select c.Id_maquina as id_maqui, c.Tipo_maquina as maac, c.Musculo_trabaja as musculo from maquinas c where c.Id_maquina=c.Id_maquina;"; 

echo "<table border=\"1\" align=\"center\">\n";
   echo "<caption>DATOS MAQUINA</caption>";
    echo "<tr align=\"center\">\n";
  
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Id_maquina</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Tipo_maquina</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Musculo_trabaja</font></td>";
    

    $respuesta= $dblink->query($consulta);
    while($fila=$respuesta->fetch_object()){
        echo "<tr align=\"center\">\n<td>$fila->id_maqui</td><td>$fila->maac</td><td>$fila->musculo</td></tr>";
   }
     echo "</table>\n<br><br>";
    



    echo  "<center> Ponga el ID de la maquina que desea eliminar</center>";
?>
<center>
<form method="POST" action="borrarmaquina.php">
    ID: <input  type="text" name="ID">
    <input type="submit" value="Eliminar">
</center>
</form>
<br>



<center>
<form method="POST" action="modificarmaquina.php">
    Escriba el ID de la rutina que desee modificar<br>
<input type="text" name="id" required><br>
<input type="radio" name="cambiaren" value="1" required> Tipo maquina<br />
<input type="radio" name="cambiaren" value="2"> Musculo trabaja<br />

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