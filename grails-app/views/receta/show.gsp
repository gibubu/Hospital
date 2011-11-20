
<%@ page import="general.Receta" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receta.label', default: 'Receta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receta">
			
				<g:if test="${recetaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="receta.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${recetaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recetaInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="receta.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${recetaInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recetaInstance?.doctor}">
				<li class="fieldcontain">
					<span id="doctor-label" class="property-label"><g:message code="receta.doctor.label" default="Doctor" /></span>
					
						<span class="property-value" aria-labelledby="doctor-label"><g:link controller="doctor" action="show" id="${recetaInstance?.doctor?.id}">${recetaInstance?.doctor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${recetaInstance?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="receta.paciente.label" default="Paciente" /></span>
					
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${recetaInstance?.paciente?.id}">${recetaInstance?.paciente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${recetaInstance?.id}" />
					<g:link class="edit" action="edit" id="${recetaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
