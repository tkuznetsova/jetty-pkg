
<%@ page import="eshop.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
						
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="creditcardID" title="${message(code: 'user.creditcardID.label', default: 'Creditcard ID')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'user.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="addressline1" title="${message(code: 'user.addressline1.label', default: 'Addressline1')}" />
					
						<g:sortableColumn property="addressline2" title="${message(code: 'user.addressline2.label', default: 'Addressline2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'user.city.label', default: 'City')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "class.email")}</g:link></td>
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "creditcardID")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "addressline1")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "addressline2")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "city")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
