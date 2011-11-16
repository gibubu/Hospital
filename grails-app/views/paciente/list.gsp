
<%@ page import="general.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paciente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'paciente.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'paciente.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'paciente.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'paciente.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'paciente.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'paciente.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pacienteInstanceList}" status="i" var="pacienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pacienteInstance.id}">${fieldValue(bean: pacienteInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${pacienteInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${pacienteInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "apellidoPaterno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pacienteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
