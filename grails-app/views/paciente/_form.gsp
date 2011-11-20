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

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="paciente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="32" required="" value="${pacienteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="32" required="" value="${pacienteInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="32" required="" value="${pacienteInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="paciente.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" maxlength="100" required="" value="${pacienteInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="paciente.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" pattern="${pacienteInstance.constraints.telefono.matches}" required="" value="${pacienteInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="paciente.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="edad" precision="day"  value="${pacienteInstance?.edad}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="paciente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${pacienteInstance.constraints.sexo.inList}" required="" value="${pacienteInstance?.sexo}" valueMessagePrefix="paciente.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="paciente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${pacienteInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="paciente.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${pacienteInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="paciente.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${pacienteInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'cita', 'error')} ">
	<label for="cita">
		<g:message code="paciente.cita.label" default="Cita" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pacienteInstance?.cita?}" var="c">
    <li><g:link controller="cita" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cita" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cita.label', default: 'Cita')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="paciente.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${pacienteInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'historialClinico', 'error')} ">
	<label for="historialClinico">
		<g:message code="paciente.historialClinico.label" default="Historial Clinico" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pacienteInstance?.historialClinico?}" var="h">
    <li><g:link controller="historialClinico" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="historialClinico" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'historialClinico.label', default: 'HistorialClinico')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="paciente.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${pacienteInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'receta', 'error')} ">
	<label for="receta">
		<g:message code="paciente.receta.label" default="Receta" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pacienteInstance?.receta?}" var="r">
    <li><g:link controller="receta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="receta" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'receta.label', default: 'Receta')])}</g:link>
</li>
</ul>

</div>

