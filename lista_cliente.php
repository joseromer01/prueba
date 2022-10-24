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
    $ver_base = mysqli_get_server_info($dbli2k);
    echo "Conectado a la base $ver3bas <br /><br>";

    $consulta="select c.Id_cliente as id_cliente_cliente, c.Nombre as nombre_cliente, c.Apellido as apellido_cliente, c.Genero as genero_cliente, c.Fecha_nac as fecha_nac_cliente, c.Fecha_ingreso as fecha_ingreso_cliente, c.Fecha_fin as fecha_fin_cliente, b.Avenida as ave, b.Calle as calle_cliente, e.Barrio as barrio_cliente, t.Telefono as telefono_cliente, x.Correo as correito_cliente, z.Plan_pago as paguito, z.monto_bs as boli from clientes c, direccion_cliente b, barrio_cliente e, telefono_cliente t, correo_cliente x, plan_pago_cliente z where b.Id_cliente = e.Id_cliente and t.Id_cliente=c.Id_cliente and e.Id_cliente=c.Id_cliente and x.Id_cliente = c.Id_cliente and z.Id_cliente=c.Id_cliente;"; 

echo "<table border=\"1\" align=\"center\">\n";
   echo "<caption>DATOS CLIENTE</caption>";
    echo "<tr align=\"center\">\n";
  
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Id_cliente</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Nombre</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">Apellido</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Genero</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Fecha_nac</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Fecha_inicio</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Fecha_fin</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Avenida</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Calle</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Barrio</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Teléfono</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Correo</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Plan de pago</font></td>\n";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">Monto bs</font></td>\n";
    echo "</tr>\n";


    $respuesta= $dblink->query($consulta);
    while($fila=$respuesta->fetch_object()){
        echo "<tr align=\"center\">\n<td>$fila->id_cliente_cliente</td><td>$fila->nombre_cliente</td><td>$fila->apellido_cliente</td><td>$fila->genero_cliente</td><td>$fila->fecha_nac_cliente</td><td>$fila->fecha_ingreso_cliente</td><td>$fila->fecha_fin_cliente</td><td>$fila->ave</td><td>$fila->calle_cliente</td><td>$fila->barrio_cliente</td><td>$fila->telefono_cliente</td><td>$fila->correito_cliente</td><td>$fila->paguito</td><td>$fila->boli</td></tr>";
   }
     echo "</table>\n<br><br>";
    



    echo  "<center> Ponga el ID de la persona que desea eliminar</center>";
?>
<center>
<form method="POST" action="borrarcliente.php">
    ID: <input  type="text" name="ID">
    <input type="submit" value="Eliminar">
</center>
</form>
<br>






<center>
<form method="POST" action="modificarcliente.php">
    Escriba el ID de la persona que desee modificar<br>
<input type="text" name="id" required><br>
<input type="radio" name="cambiaren" value="1" required> Nombre<br />
<input type="radio" name="cambiaren" value="2"> Apellido<br />
<input type="radio" name="cambiaren" value="3"> Genero <br />
<input type="radio" name="cambiaren" value="4"> Fecha_nac <br />
<input type="radio" name="cambiaren" value="5"> Fecha_ingreso <br />
<input type="radio" name="cambiaren" value="6"> Fecha_fin <br />

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