<%@ page import="general.HistorialClinico" %>



<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="historialClinico.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${historialClinicoInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="historialClinico.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${general.Doctor.list()}" optionKey="id" required="" value="${historialClinicoInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'enfermedad', 'error')} required">
	<label for="enfermedad">
		<g:message code="historialClinico.enfermedad.label" default="Enfermedad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="enfermedad" cols="40" rows="5" maxlength="400" required="" value="${historialClinicoInstance?.enfermedad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'antecedentesFamiliares', 'error')} ">
	<label for="antecedentesFamiliares">
		<g:message code="historialClinico.antecedentesFamiliares.label" default="Antecedentes Familiares" />
		
	</label>
	<g:textArea name="antecedentesFamiliares" cols="40" rows="5" maxlength="400" value="${historialClinicoInstance?.antecedentesFamiliares}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'antecedentesPersonales', 'error')} ">
	<label for="antecedentesPersonales">
		<g:message code="historialClinico.antecedentesPersonales.label" default="Antecedentes Personales" />
		
	</label>
	<g:textArea name="antecedentesPersonales" cols="40" rows="5" maxlength="400" value="${historialClinicoInstance?.antecedentesPersonales}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'examenGeneral', 'error')} ">
	<label for="examenGeneral">
		<g:message code="historialClinico.examenGeneral.label" default="Examen General" />
		
	</label>
	<g:textArea name="examenGeneral" cols="40" rows="5" maxlength="400" value="${historialClinicoInstance?.examenGeneral}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'examenRegional', 'error')} ">
	<label for="examenRegional">
		<g:message code="historialClinico.examenRegional.label" default="Examen Regional" />
		
	</label>
	<g:textArea name="examenRegional" cols="40" rows="5" maxlength="400" value="${historialClinicoInstance?.examenRegional}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'comentario', 'error')} required">
	<label for="comentario">
		<g:message code="historialClinico.comentario.label" default="Comentario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="comentario" cols="40" rows="5" maxlength="400" required="" value="${historialClinicoInstance?.comentario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialClinicoInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="historialClinico.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${general.Paciente.list()}" optionKey="id" required="" value="${historialClinicoInstance?.paciente?.id}" class="many-to-one"/>
</div>

