
<%@ page import="general.Cita" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cita" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'cita.fecha.label', default: 'Fecha')}" />
					
						<th><g:message code="cita.paciente.label" default="Paciente" /></th>
					
						<th><g:message code="cita.doctor.label" default="Doctor" /></th>
					
						<g:sortableColumn property="validDoc" title="${message(code: 'cita.validDoc.label', default: 'Valid Doc')}" />
					
						<g:sortableColumn property="validPac" title="${message(code: 'cita.validPac.label', default: 'Valid Pac')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${citaInstanceList}" status="i" var="citaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${citaInstance.id}">${fieldValue(bean: citaInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: citaInstance, field: "paciente")}</td>
					
						<td>${fieldValue(bean: citaInstance, field: "doctor")}</td>
					
						<td><g:formatBoolean boolean="${citaInstance.validDoc}" /></td>
					
						<td><g:formatBoolean boolean="${citaInstance.validPac}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${citaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
