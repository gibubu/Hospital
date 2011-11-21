
<%@ page import="general.Asistente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'asistente.label', default: 'Asistente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-asistente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-asistente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'asistente.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'asistente.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'asistente.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'asistente.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'asistente.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'asistente.direccion.label', default: 'Direccion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${asistenteInstanceList}" status="i" var="asistenteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${asistenteInstance.id}">${fieldValue(bean: asistenteInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: asistenteInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: asistenteInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: asistenteInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: asistenteInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: asistenteInstance, field: "direccion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${asistenteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
