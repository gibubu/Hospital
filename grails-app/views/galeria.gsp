<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
    <link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
	
	<script src="js/prototype.js" type="text/javascript"></script>
	<script src="js/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
	<script src="js/lightbox.js" type="text/javascript"></script>
  </head>
  <body>
    <div id="main_container">

      <div class="header">
        <div id="logo"><a href="index.html"><img src="images/logo.png" alt="" title="" border="0" height="54" width="162" /></a></div>

        <div class="right_header">

          <div id="menu">
            <ul>
              <li><a class="current" href="#" title="">Home</a></li>
              <!--<li><g:link class="list" action="list" controller="asistente">Asistente</g:link></li>-->
              <!--<li><g:link class="list" action="list" controller="cita">Cita</g:link></li>-->
              <li><g:link class="list" action="list" controller="doctor">Doctor</g:link></li>
              <li><g:link class="list" action="list" controller="especialidad">Especialidad</g:link></li>
              <!--<li><g:link class="list" action="list" controller="HistorialClinico">Historial</g:link></li>-->
              <!--<li><g:link class="list" action="list" controller="paciente">Paciente</g:link></li>-->
              <!--<li><g:link class="list" action="list" controller="persona">Persona</g:link></li>-->
              <!--<li><g:link class="list" action="list" controller="receta">Receta</g:link></li>-->
              <li><a href="http://localhost:8080/hospital/galeria.gsp">Galeria</a></li>
              <li><a href="http://localhost:8080/hospital/quienessomos.gsp">Nosotros</a></li>
          </div>
          <!--<ul id="button">
            <li><g:link class="list" action="list" controller="asistente">Asistente</g:link></li>
        <li><g:link class="list" action="list" controller="cita">Cita</g:link></li>
        <li><g:link class="list" action="list" controller="doctor">Doctor</g:link></li>
        <li><g:link class="list" action="list" controller="especialidad">Especialidad</g:link></li>
        <li><g:link class="list" action="list" controller="HistorialClinico">Historial</g:link></li>
        <li><g:link class="list" action="list" controller="paciente">Paciente</g:link></li>
        <li><g:link class="list" action="list" controller="persona">Persona</g:link></li>
        <li><g:link class="list" action="list" controller="receta">Receta</g:link></li>
          </ul>-->

        </div>


      </div>

      <div id="main_content">

        <div class="box_content">

          <div class="box_title">
            <div id="content">
<h2>Galeria de Imagenes</h2>
<h2>Click en la imagen que desea visualizar</h2>
<a href="images/1.jpg" rel="lightbox"><img src="images/1.jpg" width="120" height="120" alt="" /></a>
<a href="images/2.jpg" rel="lightbox"><img src="images/2.jpg" width="120" height="120" alt=""/></a>
<a href="images/3.jpg" rel="lightbox"><img src="images/3.jpg" width="120" height="120" alt="" /></a>
<a href="images/4.jpg" rel="lightbox"><img src="images/4.jpg" width="120" height="120" alt="" /></a>
<a href="images/5.jpg" rel="lightbox"><img src="images/5.jpg" width="120" height="120" alt="" /></a>
<a href="images/6.jpg" rel="lightbox"><img src="images/6.jpg" width="120" height="120" alt=""/></a>


            </div>

             


          </div>


        </div>

        <div class="clear"></div>
      </div>
      <div id="footer">
        <div class="copyright"> <img src="images/footer_logo.gif" alt="" title="" />

        </div>
      </div>
    </div>





  </body>
</html>
