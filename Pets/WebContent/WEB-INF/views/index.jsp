<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" type="text/css"> --%>
<title>Pets</title>
</head>
<body>
	<div class = "container">
		<div class = "panel">
			<h1>Make a Dog!</h1>
			<form action="/Pets/Dogs" method="get">
				<h3>Name:<input class="inputs" type="text" name="dogname"></h3>
				<h3>Breed:<input class="inputs" type="text" name="dogbreed"></h3>
				<h3>Weight(lb):<input class="inputs" type="number" name="dogweight"></h3>
				<input class="btn" type="submit" value="Submit">
			</form>	
		</div>
		<div class = "panel">
			<h1>Make a Cat!</h1>	
			<form action="/Pets/Cats" method="get">
				<h3>Name:<input class="inputs" type="text" name="catname"></h3>
				<h3>Breed:<input class="inputs" type="text" name="catbreed"></h3>
				<h3>Weight(lb):<input class="inputs" type="number" name="catweight"></h3>
				<input class="btn" type="submit" value="Submit">
			</form>
		</div>
	</div>
</body>
</html>