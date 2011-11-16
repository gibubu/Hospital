<%@ page import="general.Doctor" %>


<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="doctor.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${doctorInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="doctor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${doctorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="doctor.nombre.label" default="Nombre" />

	</label>
	<g:textField name="nombre" value="${doctorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="doctor.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${doctorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="doctor.apellidoMaterno.label" default="Apellido Materno" />

	</label>
	<g:textField name="apellidoMaterno" value="${doctorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="doctor.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${doctorInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="doctor.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${doctorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="doctor.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${doctorInstance?.telefono}"/>
</div>

