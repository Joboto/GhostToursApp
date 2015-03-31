<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<%@page import="ghost.Role"%>
<html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="City of the Dead"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'skull-big.png')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'skull-big.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<link href="css/structure.css" rel="stylesheet" type="text/css">
  		<asset:stylesheet src="structure.css"/>
		<asset:stylesheet src="bootstrap.css"/>
		<asset:stylesheet src="bootstrap-theme.css"/>
		<asset:stylesheet src="bootstrap.min.css"/>
		<asset:javascript src="jquery-1.9.1.js"/>
		<asset:javascript src="application.js"/>
		<asset:javascript src="bootstrap.js"/>
		<asset:javascript src="bootstrap.min.js"/>
		<asset:javascript src="npm.js"/>
		<g:layoutHead/>
	</head>

	<nav class="navbar">
		<div  class="container">
			<div class="navbar-header">
				<ul class="nav nav-tabs" role="tablist">
					<g:if test="${session.getAttribute("isManager")}" >
						<g:each in="${Role.list()}" var="role">
					<li><g:link name="role" value="${role.id}" controller="staff" action="${role.name}Dashboard">${role.name}</g:link></li>
						</g:each>
					</g:if>
					<g:else>
						<g:each in="${session.getAttribute("loggedInStaff").roles()}" var="role">
					<li><g:link name="role" value="${role.id}" controller="staff" action="${role.name}Dashboard">${role.name}</g:link></li>
						</g:each>
					</g:else>
					<li role="presentation"><g:link controller="staff" action="logout">Logout</g:link></li>
				</ul>
			</div>
		</div>
	</nav>
	<body>
		<div class="container">
		<g:layoutBody/>
		</div>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
	
</html>
