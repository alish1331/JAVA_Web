<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Display <c:out value="${cat.getName()}"></c:out></title>
</head>
	<body>
		<h3>
			You created a cat!
		</h3>
		<p>
			<c:out value="${cat.showAffection()}"/>
		</p>
		<a href="/Pets/Home"><button>Back</button></a>
	</body>
</html>