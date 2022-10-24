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
    $id=$_POST['id']; 
    $cambiaren=$_POST['cambiaren'];
    $cambiarpor=$_POST['cambiarpor'];
    
    if ($cambiaren == 1) {
      $pregunta = " update clientes set nombre='$cambiarpor' where Id_cliente=$id; ";
    } elseif ($cambiaren == 2) {
      $pregunta = "update clientes set Apellido='$cambiarpor' where Id_cliente=$id; ";
    } elseif ($cambiaren == 3) {
      $pregunta = "update clientes set Genero='$cambiarpor' where Id_cliente=$id; ";
       } elseif ($cambiaren == 4) {
      $pregunta = "update clientes set Fecha_nac='$cambiarpor' where Id_cliente=$id; ";
       } elseif ($cambiaren == 5) {
      $pregunta = "update clientes set Fecha_ingreso='$cambiarpor' where Id_cliente=$id; ";
       } elseif ($cambiaren == 6) {
      $pregunta = "update clientes set Fecha_fin='$cambiarpor' where Id_cliente=$id; ";
    }else
{



echo "Mal formulado <br>\n";
exit;
}
$dos = $dblink->query($pregunta);
    echo "<h1> MODIFICACIÓN REALIZADA<h1>";
echo "<a href=lista_cliente.php>--volver atrás</a>";
 ?>
   
<a href="lista_cliente.php"></a>

</body>
</html>
