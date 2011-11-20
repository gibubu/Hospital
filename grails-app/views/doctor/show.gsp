
<%@ page import="general.Doctor" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctor">
			
				<g:if test="${doctorInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="doctor.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${doctorInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="doctor.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${doctorInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="doctor.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${doctorInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="doctor.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${doctorInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="doctor.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${doctorInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="doctor.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${doctorInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="doctor.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${doctorInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="doctor.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:formatDate date="${doctorInstance?.edad}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="doctor.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${doctorInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="doctor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${doctorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.especialidades}">
				<li class="fieldcontain">
					<span id="especialidades-label" class="property-label"><g:message code="doctor.especialidades.label" default="Especialidades" /></span>
					
						<span class="property-value" aria-labelledby="especialidades-label"><g:fieldValue bean="${doctorInstance}" field="especialidades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="doctor.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${doctorInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="doctor.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${doctorInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.cita}">
				<li class="fieldcontain">
					<span id="cita-label" class="property-label"><g:message code="doctor.cita.label" default="Cita" /></span>
					
						<g:each in="${doctorInstance.cita}" var="c">
						<span class="property-value" aria-labelledby="cita-label"><g:link controller="cita" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="doctor.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${doctorInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.historialClinico}">
				<li class="fieldcontain">
					<span id="historialClinico-label" class="property-label"><g:message code="doctor.historialClinico.label" default="Historial Clinico" /></span>
					
						<g:each in="${doctorInstance.historialClinico}" var="h">
						<span class="property-value" aria-labelledby="historialClinico-label"><g:link controller="historialClinico" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="doctor.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${doctorInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.receta}">
				<li class="fieldcontain">
					<span id="receta-label" class="property-label"><g:message code="doctor.receta.label" default="Receta" /></span>
					
						<g:each in="${doctorInstance.receta}" var="r">
						<span class="property-value" aria-labelledby="receta-label"><g:link controller="receta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${doctorInstance?.id}" />
					<g:link class="edit" action="edit" id="${doctorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
