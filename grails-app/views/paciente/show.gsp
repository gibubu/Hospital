
<%@ page import="general.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${pacienteInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="paciente.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${pacienteInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="paciente.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${pacienteInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="paciente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${pacienteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${pacienteInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${pacienteInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="paciente.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${pacienteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="paciente.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${pacienteInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="paciente.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:formatDate date="${pacienteInstance?.edad}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="paciente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${pacienteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="paciente.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pacienteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="paciente.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${pacienteInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="paciente.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${pacienteInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.cita}">
				<li class="fieldcontain">
					<span id="cita-label" class="property-label"><g:message code="paciente.cita.label" default="Cita" /></span>
					
						<g:each in="${pacienteInstance.cita}" var="c">
						<span class="property-value" aria-labelledby="cita-label"><g:link controller="cita" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="paciente.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${pacienteInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.historialClinico}">
				<li class="fieldcontain">
					<span id="historialClinico-label" class="property-label"><g:message code="paciente.historialClinico.label" default="Historial Clinico" /></span>
					
						<g:each in="${pacienteInstance.historialClinico}" var="h">
						<span class="property-value" aria-labelledby="historialClinico-label"><g:link controller="historialClinico" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="paciente.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${pacienteInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.receta}">
				<li class="fieldcontain">
					<span id="receta-label" class="property-label"><g:message code="paciente.receta.label" default="Receta" /></span>
					
						<g:each in="${pacienteInstance.receta}" var="r">
						<span class="property-value" aria-labelledby="receta-label"><g:link controller="receta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pacienteInstance?.id}" />
					<g:link class="edit" action="edit" id="${pacienteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
