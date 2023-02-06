<%@ page import="org.apache.commons.logging.LogFactory"%>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<header>
	<link rel="stylesheet" href="pages/stylesheet/bootstrap.min.css">
	<link rel="stylesheet" href="pages/stylesheet/extrastyles.css">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
	<title>OSDE - Elegí con libertad lo mejor para tu salud</title>
	<link rel="shortcut icon" href="pages/img/favicon.ico" />

</header>

<body class="bg-white">
	<h1 style="text-indent: -9999px; position: absolute;">
		OSDE es la obra social y prepaga que ofrece el m&aacute;s completo servicio de salud en Argentina. Busc&aacute; tu m&eacute;dico en nuestra cartilla y realiz&aacute; tr&aacute;mites on line. 
	</h1>

	<div class="container-fluid bg-dark" >
		<div class="container">
			<div class="row text-light w-100">
				<div class="col-md-12"><span class="align-middle small font-weight-light">Urgencias 0810.888.7788 // Riesgo de Vida 0810.666.1111 // Centro de Atención Telefónica 0810.555.6733</span></div>
			</div>
		</div>
	</div>
	
	<div class="container-fluid bg-light">
		<div class="container">
			<div class="row" >
				<div class="col-md-6" >
					<a href="#"><img class="img-fluid" style="margin-top:25px;" src="pages/img/logo-osde.jpg" /></a>
				</div>
				<div class="col-md-3" >
					<a class="align-middle menuPrincipal"  href="#">ABM Pacientes</a>
				</div>
				<div class="col-md-3">
					<a class="align-middle menuPrincipal" href="#">ABM Turnos</a>
				</div>
			</div>	
		</div>
	</div>
	
	<!-- 
	***************
	***CONTENIDO***
	***************
	-->
	<div class="container-fluid bg-white">
		<div class="container" > <!-- style="min-height:500px;" -->
			<h2>Bienvenido al sistema de ABM</h2>
			<hr />
			<h3>Por favor seleccione el tipo de operación que desea efectuar en el menú principal ubicado en la parte superior de esta página</h3>			
			<hr />
			<h3>Sitio web desarrollado por SharksTeam</h3>
		</div>
	</div>
	
	<footer>
		<div class="container-fluid bg-light">
			<div class="container telefonosImportantes">
				<div class="row text-center">
					<div class="col-md-4"   >
							<h4 class="text-success">URGENCIAS</h4>
							<h4 class="text-secondary">0810.888.7788</h4>
							<h4 class="text-secondary" >0810.999.6300</h4>
					</div>
					<div class="col-md-4" >
						<h4 class="text-danger">RIESGO DE VIDA</h4>
						<h4 class="text-secondary">0810.666.1111</h4>
					</div>
					<div class="col-md-4" >
						<h6 class="text-primary">CENTRO DE ATENCIÓN TELEFÓNICA</h6>
						<h5 class="text-primary">LUNES A VIERNES DE 9 A 20</h5>
						<h4 class="text-secondary">0810.555.6733</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid" style="background-color:#124465;" >
			<div class="container">
				<div class="row text-light">
					<div class="col-md-6" >
						<a href="/"><img class="img-fluid figure" alt="Responsive image" src="pages/img/osdefooter.jpg" /></a>
					</div>
					<div class="col-md-6 " >
						<p></p>
						<p>Academia Softtek 2019</p>
						<p>Proyecto ABM Socios y Turnos</p>
						<h4>Grupo 1 - Sharks Team</h4>
						<img class="img-responsive center-block" src="pages/img/sharknado.png" />
					</div>
				</div>
			</div>
		</div>
	</footer>
	
</body>

</html>