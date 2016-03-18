<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Spring Security Example</title>
</head>
<body >
	
	<form action="/login" method="post">

		<div>
				<input type="text" class="style-4" name="username"
					placeholder="User Name" />
			
				<input type="password" class="style-4" name="pass"
					placeholder="Password" />
			
				<input type="submit" value="Sign In"  />
			
			<c:if test="${param.error ne null}">
				<div >Invalid username and password.</div>
			</c:if>
			<c:if test="${param.logout ne null}">
				<div >You have been logged out.</div>
			</c:if>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>