<%@ page import="general.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="persona.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${personaInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="persona.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${personaInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="persona.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${personaInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="persona.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${personaInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="persona.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${personaInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${personaInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="persona.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${personaInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${personaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="persona.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${personaInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${personaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="persona.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${personaInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="persona.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${personaInstance?.telefono}"/>
</div>

