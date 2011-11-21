<%@ page import="general.Especialidad" %>



<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="especialidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="64" required="" value="${especialidadInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="especialidad.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${general.Doctor.list()}" optionKey="id" required="" value="${especialidadInstance?.doctor?.id}" class="many-to-one"/>
</div>

