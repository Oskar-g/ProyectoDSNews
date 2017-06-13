<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<div id="header-wrapper">
		<div id="header">
			<h4 style="text-align: right; margin-right: 10px;"><a href="logout"><spring:message code="logout" /><i class="fa fa-sign-out" aria-hidden="true"></i></a></h4>
			<h4 style="text-align: right; margin-right: 10px;"><a><spring:message code="saludo"
   										arguments="${user.name};${user.role}"
    										htmlEscape="false"
    										argumentSeparator=";"/></a></h4>
		</div>
	</div>