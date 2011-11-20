
<%@ page import="general.HistorialClinico" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historialClinico.label', default: 'HistorialClinico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-historialClinico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-historialClinico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list historialClinico">
			
				<g:if test="${historialClinicoInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="historialClinico.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${historialClinicoInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.doctor}">
				<li class="fieldcontain">
					<span id="doctor-label" class="property-label"><g:message code="historialClinico.doctor.label" default="Doctor" /></span>
					
						<span class="property-value" aria-labelledby="doctor-label"><g:link controller="doctor" action="show" id="${historialClinicoInstance?.doctor?.id}">${historialClinicoInstance?.doctor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.enfermedad}">
				<li class="fieldcontain">
					<span id="enfermedad-label" class="property-label"><g:message code="historialClinico.enfermedad.label" default="Enfermedad" /></span>
					
						<span class="property-value" aria-labelledby="enfermedad-label"><g:fieldValue bean="${historialClinicoInstance}" field="enfermedad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.antecedentesFamiliares}">
				<li class="fieldcontain">
					<span id="antecedentesFamiliares-label" class="property-label"><g:message code="historialClinico.antecedentesFamiliares.label" default="Antecedentes Familiares" /></span>
					
						<span class="property-value" aria-labelledby="antecedentesFamiliares-label"><g:fieldValue bean="${historialClinicoInstance}" field="antecedentesFamiliares"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.antecedentesPersonales}">
				<li class="fieldcontain">
					<span id="antecedentesPersonales-label" class="property-label"><g:message code="historialClinico.antecedentesPersonales.label" default="Antecedentes Personales" /></span>
					
						<span class="property-value" aria-labelledby="antecedentesPersonales-label"><g:fieldValue bean="${historialClinicoInstance}" field="antecedentesPersonales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.examenGeneral}">
				<li class="fieldcontain">
					<span id="examenGeneral-label" class="property-label"><g:message code="historialClinico.examenGeneral.label" default="Examen General" /></span>
					
						<span class="property-value" aria-labelledby="examenGeneral-label"><g:fieldValue bean="${historialClinicoInstance}" field="examenGeneral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.examenRegional}">
				<li class="fieldcontain">
					<span id="examenRegional-label" class="property-label"><g:message code="historialClinico.examenRegional.label" default="Examen Regional" /></span>
					
						<span class="property-value" aria-labelledby="examenRegional-label"><g:fieldValue bean="${historialClinicoInstance}" field="examenRegional"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.comentario}">
				<li class="fieldcontain">
					<span id="comentario-label" class="property-label"><g:message code="historialClinico.comentario.label" default="Comentario" /></span>
					
						<span class="property-value" aria-labelledby="comentario-label"><g:fieldValue bean="${historialClinicoInstance}" field="comentario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialClinicoInstance?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="historialClinico.paciente.label" default="Paciente" /></span>
					
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${historialClinicoInstance?.paciente?.id}">${historialClinicoInstance?.paciente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${historialClinicoInstance?.id}" />
					<g:link class="edit" action="edit" id="${historialClinicoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
