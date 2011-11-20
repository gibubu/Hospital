<%@ page import="general.Receta" %>



<div class="fieldcontain ${hasErrors(bean: recetaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="receta.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${recetaInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: recetaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="receta.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="400" required="" value="${recetaInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recetaInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="receta.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${general.Doctor.list()}" optionKey="id" required="" value="${recetaInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recetaInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="receta.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${general.Paciente.list()}" optionKey="id" required="" value="${recetaInstance?.paciente?.id}" class="many-to-one"/>
</div>

