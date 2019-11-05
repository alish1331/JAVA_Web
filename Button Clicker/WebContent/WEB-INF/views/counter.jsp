<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/assets/css/style.css">
	<meta charset="UTF-8">
	<title>Button Clicker</title>
</head>

<body>
	<!-- This displays the current count and whenever the button is clicked
		it reloads the page which then runs the method in our Main controller and increases
		the count in session: -->
	<div class="container">
		<a href="/Button_Clicker/Counter"><button>Click Me!</button></a>
		<h1>You have clicked the button <c:out value="${count}"/> times!</h1>
	</div>
</body>
</html>