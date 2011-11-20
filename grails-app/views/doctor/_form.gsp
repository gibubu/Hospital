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

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="doctor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="32" required="" value="${doctorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="doctor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="32" required="" value="${doctorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="doctor.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="32" required="" value="${doctorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="doctor.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" maxlength="100" required="" value="${doctorInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="doctor.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" pattern="${doctorInstance.constraints.telefono.matches}" required="" value="${doctorInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="doctor.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="edad" precision="day"  value="${doctorInstance?.edad}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="doctor.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${doctorInstance.constraints.sexo.inList}" required="" value="${doctorInstance?.sexo}" valueMessagePrefix="doctor.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="doctor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${doctorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'especialidades', 'error')} required">
	<label for="especialidades">
		<g:message code="doctor.especialidades.label" default="Especialidades" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="especialidades" maxlength="200" required="" value="${doctorInstance?.especialidades}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="doctor.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${doctorInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="doctor.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${doctorInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'cita', 'error')} ">
	<label for="cita">
		<g:message code="doctor.cita.label" default="Cita" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${doctorInstance?.cita?}" var="c">
    <li><g:link controller="cita" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cita" action="create" params="['doctor.id': doctorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cita.label', default: 'Cita')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="doctor.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${doctorInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'historialClinico', 'error')} ">
	<label for="historialClinico">
		<g:message code="doctor.historialClinico.label" default="Historial Clinico" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${doctorInstance?.historialClinico?}" var="h">
    <li><g:link controller="historialClinico" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="historialClinico" action="create" params="['doctor.id': doctorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'historialClinico.label', default: 'HistorialClinico')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="doctor.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${doctorInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'receta', 'error')} ">
	<label for="receta">
		<g:message code="doctor.receta.label" default="Receta" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${doctorInstance?.receta?}" var="r">
    <li><g:link controller="receta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="receta" action="create" params="['doctor.id': doctorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'receta.label', default: 'Receta')])}</g:link>
</li>
</ul>

</div>

