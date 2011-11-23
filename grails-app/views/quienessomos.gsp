<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>Medical Theme Css Template</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
    <!--[if IE 6]> <link rel="stylesheet" type="text/css" href="iecss.css" /> <![endif]-->
    <link rel="stylesheet" href="css/style_1.css" type="text/css" media="screen" />
    <link href="css/form.css" type="text/css" rel="stylesheet" />
 
  
  </head>

  <body>
    <div id="main_container">
      
      <div class="header">
        <div id="logo"><a href="index.html"><img src="images/logo.png" alt="" title="" border="0" height="54" width="162" /></a></div>
        <div class="right_header">
         <div id="menu">
            <ul>
                  <li><a class="current" href="http://localhost:8080/hospital" title="">Home</a></li>
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
	<div class="title_icon"></div>
        <h2>Nuestra <span class="dark_blue">Ubicaci&oacute;n</span></h2>
	</div>
	<div class="box_text_content"> 
	<div class="box_text"> 
          <iframe width="250" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.es/maps?f=q&amp;source=s_q&amp;hl=es&amp;geocode=&amp;q=Universidad+de+Montemorelos,+Montemorelos,+M%C3%A9xico&amp;aq=1&amp;sll=40.396764,-3.713379&amp;sspn=10.21932,23.269043&amp;vpsrc=0&amp;ie=UTF8&amp;hq=Universidad+de+Montemorelos,+Montemorelos,+M%C3%A9xico&amp;t=m&amp;ll=25.192507,-99.84528&amp;spn=0.020193,0.032015&amp;output=embed"></iframe><br /><small><a href="http://maps.google.es/maps?f=q&amp;source=embed&amp;hl=es&amp;geocode=&amp;q=Universidad+de+Montemorelos,+Montemorelos,+M%C3%A9xico&amp;aq=1&amp;sll=40.396764,-3.713379&amp;sspn=10.21932,23.269043&amp;vpsrc=0&amp;ie=UTF8&amp;hq=Universidad+de+Montemorelos,+Montemorelos,+M%C3%A9xico&amp;t=m&amp;ll=25.192507,-99.84528&amp;spn=0.020193,0.032015" style="color:#0000FF;text-align:left">Ver mapa más grande</a></small> </div>
	<a href="#" class="details">+ details</a> </div>
	</div>
       
       
	<div class="box_content">
	<div class="box_title">
	<div class="title_icon"></div>
	<h2>Enviar <span class="dark_blue">C</span></h2>
	</div>
	<div class="box_text_content"> 
	<div class="box_text"> 
         <td class="ca2">&nbsp;</td>
        <td class="ca3" rowspan="3">
			<form id="form1" name="form1" method="post" action="">
				<input tabindex="1" class="floatl" type="text" value="Your name:" onblur="if(this.value==''){this.value='Your name:';}" onfocus="if(this.value=='Your name:'){this.value='';}" /><br/>
				<input tabindex="2" class="floatl" type="text" value="Your e-mail:" onblur="if(this.value==''){this.value='Your e-mail:';}" onfocus="if(this.value=='Your e-mail:'){this.value='';}" /><br/>
				<input tabindex="3" class="floatl" type="text" value="Your address:" onblur="if(this.value==''){this.value='Your address:';}" onfocus="if(this.value=='Your address:'){this.value='';}" /><br/>
				<input tabindex="4" class="floatl" type="text" value="Your telephone:" onblur="if(this.value==''){this.value='Your telephone:';}" onfocus="if(this.value=='Your telephone:'){this.value='';}" /><br/>
				<textarea tabindex="5" class="floatl" onblur="if(this.value==''){this.value='Your message:';}" onfocus="if(this.value=='Your message:'){this.value='';}">Your message:</textarea>
                                <input tabindex="2" class="sub floatr" type="submit" value="" /><br></br>
				<input tabindex="2" class="res floatr" type="reset" value="" />
			</form>
			</td>
        
        </div>
	<a href="#" class="details">+ details</a> </div>
	</div>
       
       
	<div class="box_content">
	<div class="box_title">
	<div class="title_icon"></div>
	<h2>My <span class="dark_blue">Sleep</span></h2>
	</div>
	<div class="box_text_content"> 
	<div class="box_text"> Lorem ipsum dolor sit amet,
	consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
	labore et dolore magna aliqua. </div>
	<a href="#" class="details">+ details</a> </div>
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