<!DOCTYPE html>
<html>
<head>
	<title>Black_Fit</title>
</head>

<body bgcolor="#DCDCDC">
<center><h1><hr>---- BLACK FIT ----<hr></h1></center>

<center><img src="imagenes\fitt.jpg" width="230" border="2"></center><br>
<center><h2>Registro de Cliente<br></h2></center>


<table  width=30% align=center border=0>
	<tr><td colspan=1 align="center"><h2>.-Ingrese sus Datos:-.</h2></td></tr>
	<tr><td>         
<form method="POST" action="clientes2.php">
Nombre: <input width="432px" height="auto" type="text" name="nombre"><br>
Apellido: <input type="text" name="apellido"><br>
Genero: <input type="text" name="genero"><br>
Fecha_nacimiento: <input type="date" name="fecha_nacimiento"><br>
Fecha_ingreso: <input type="date" name="fecha_ingreso"><br>
Fecha_fin: <input type="date" name="fecha_fin"><br>
Avenida: <input type="text" name="avenida"><br>
Calle: <input type="text" name="calle"><br>
Barrio: <input type="text" name="barrio"><br>
Telefono: <input type="int" name="telefono"><br>
Correo_electronico: <input type="text" name="correo"><br>
plan_pago: <input type="text" name="plan_pago"><br>
Monto_bs: <input type="int" name="monto_bs"><br><br>

<input type="reset" value="Limpiar"> 
<input type="submit" value="Confirmar">

</form>

<a href="index.php"><br><br>
<< Volver al inicio</a>

</td></tr>
</table>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>