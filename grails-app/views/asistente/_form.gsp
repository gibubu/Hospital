<%@ page import="general.Asistente" %>



<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="asistente.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${asistenteInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="asistente.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${asistenteInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="asistente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="32" required="" value="${asistenteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="asistente.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="32" required="" value="${asistenteInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="asistente.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="32" required="" value="${asistenteInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="asistente.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" maxlength="100" required="" value="${asistenteInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="asistente.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" pattern="${asistenteInstance.constraints.telefono.matches}" required="" value="${asistenteInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="asistente.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="edad" precision="day"  value="${asistenteInstance?.edad}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="asistente.sexo.label" default="Sexo" />
		
	</label>
	<g:select name="sexo" from="${asistenteInstance.constraints.sexo.inList}" value="${asistenteInstance?.sexo}" valueMessagePrefix="asistente.sexo" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="asistente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${asistenteInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="asistente.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${general.Doctor.list()}" optionKey="id" required="" value="${asistenteInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="asistente.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${asistenteInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="asistente.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${asistenteInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="asistente.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${asistenteInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: asistenteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="asistente.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${asistenteInstance?.passwordExpired}" />
</div>

