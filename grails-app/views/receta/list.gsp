
<%@ page import="general.Receta" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receta.label', default: 'Receta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-receta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-receta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'receta.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'receta.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="receta.doctor.label" default="Doctor" /></th>
					
						<th><g:message code="receta.paciente.label" default="Paciente" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recetaInstanceList}" status="i" var="recetaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recetaInstance.id}">${fieldValue(bean: recetaInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: recetaInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: recetaInstance, field: "doctor")}</td>
					
						<td>${fieldValue(bean: recetaInstance, field: "paciente")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recetaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
