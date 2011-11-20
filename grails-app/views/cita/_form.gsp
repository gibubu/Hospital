<%@ page import="general.Cita" %>



<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="cita.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${citaInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="cita.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${general.Paciente.list()}" optionKey="id" required="" value="${citaInstance?.paciente?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="cita.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${general.Doctor.list()}" optionKey="id" required="" value="${citaInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'validDoc', 'error')} ">
	<label for="validDoc">
		<g:message code="cita.validDoc.label" default="Valid Doc" />
		
	</label>
	<g:checkBox name="validDoc" value="${citaInstance?.validDoc}" />
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'validPac', 'error')} ">
	<label for="validPac">
		<g:message code="cita.validPac.label" default="Valid Pac" />
		
	</label>
	<g:checkBox name="validPac" value="${citaInstance?.validPac}" />
</div>

