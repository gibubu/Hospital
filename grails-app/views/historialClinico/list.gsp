
<%@ page import="general.HistorialClinico" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historialClinico.label', default: 'HistorialClinico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-historialClinico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-historialClinico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'historialClinico.fecha.label', default: 'Fecha')}" />
					
						<th><g:message code="historialClinico.doctor.label" default="Doctor" /></th>
					
						<g:sortableColumn property="enfermedad" title="${message(code: 'historialClinico.enfermedad.label', default: 'Enfermedad')}" />
					
						<g:sortableColumn property="antecedentesFamiliares" title="${message(code: 'historialClinico.antecedentesFamiliares.label', default: 'Antecedentes Familiares')}" />
					
						<g:sortableColumn property="antecedentesPersonales" title="${message(code: 'historialClinico.antecedentesPersonales.label', default: 'Antecedentes Personales')}" />
					
						<g:sortableColumn property="examenGeneral" title="${message(code: 'historialClinico.examenGeneral.label', default: 'Examen General')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${historialClinicoInstanceList}" status="i" var="historialClinicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${historialClinicoInstance.id}">${fieldValue(bean: historialClinicoInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: historialClinicoInstance, field: "doctor")}</td>
					
						<td>${fieldValue(bean: historialClinicoInstance, field: "enfermedad")}</td>
					
						<td>${fieldValue(bean: historialClinicoInstance, field: "antecedentesFamiliares")}</td>
					
						<td>${fieldValue(bean: historialClinicoInstance, field: "antecedentesPersonales")}</td>
					
						<td>${fieldValue(bean: historialClinicoInstance, field: "examenGeneral")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${historialClinicoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
