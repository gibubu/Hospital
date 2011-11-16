<%@ page import="general.Paciente" %>


<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="paciente.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${pacienteInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="paciente.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${pacienteInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="paciente.nombre.label" default="Nombre" />

	</label>
	<g:textField name="nombre" value="${pacienteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${pacienteInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" />

	</label>
	<g:textField name="apellidoMaterno" value="${pacienteInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="paciente.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${pacienteInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="paciente.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${pacienteInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="paciente.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${pacienteInstance?.telefono}"/>
</div>

