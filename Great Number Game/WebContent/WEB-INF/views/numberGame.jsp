<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Great Number Game</title>
	<style>
		.container {
			text-align: center;
			width: 900px;
			height: auto;
			margin: 0 auto;
			border: 3px solid black;
		}
		.indicator {
			width: 500px;
			height: auto;
			margin: auto;
		}
		#correct {
			width: 300px;
			height: 185px;
			display: inline-block;
			padding-top: 18%;
			background-color: green;
			color: white;
		}
		#high {
			width: 300px;
			height: 185px;
			display: inline-block;
			padding-top: 18%;
			background-color: red;
			-webkit-text-fill-color: white;
		}
		#low {
			width: 300px;
			height: 185px;
			display: inline-block;
			padding-top: 18%;
			background-color: red;
			-webkit-text-fill-color: white;
		}
	</style>
</head>

<body>
	<div class="container">
		<h1>Welcome to the Great Number Game!</h1>
		<h2>I am thinking of a number between 1 and 100</h2>
		<h2>Take a guess!</h2>
		<div class="indicator">
			<% String theResponse = (String) session.getAttribute("response"); %>
			<% if(theResponse == "correct"){ %>
				<div id="correct">
					<h1>CORRECT!</h1>
					<a href="/Great_Number_Game/Reset"><button>Play Again?</button></a>
				</div>
			<% } else if(theResponse == "low"){%>
					<div id="low">
						<h1>Too Low!</h1>
					</div>
			<% } else if(theResponse == "high"){ %>
					<div id="high">
						<h1>Too High!</h1>
					</div>
			<% } %>
		</div>
		<form action="/Great_Number_Game/NumberGame" method="post">
			<p><input type="number" name="guess"></p>
			<p><input type="submit" value="Submit"></p>
		</form>	
	</div>
</body>
</html>