<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" type="text/css">
</head>
<body>
	<div class = "title">
	<!-- Getting and setting width and height -->
	<% 
		int width = 0;
		int height = 0;
		
		if(request.getParameter("width") != null) {
			width = Integer.parseInt(request.getParameter("width"));
		}
		
		if(request.getParameter("height") != null) {
			height = Integer.parseInt(request.getParameter("height"));
		} %>
		
		<h1>Checkerboard: <%= width %>w X <%= height %>h</h1>
	
	</div>
	<button class="button" onclick="myFunction()">Click for instructions!</button>

	<script>
		function myFunction() {
		  alert("Set width and height \nAdd new params in the URL: \n?width=<number>&height=<number>");
		}
	</script>
	
	<div class = "chBoard">
		<!-- Nested loop to create a chess board: -->
		<% for(int i = 0; i < height; i++) { %>
			<% if (i % 2 == 0) { %>
				<div class = "firstRow">
					 <% for(int x = 0; x < width; x++) { %>
                			<% if(x % 2 == 0) { %>
                        		<div class="firstRowCurrent"></div>
                  		<% } else { %>
                        		<div class="firstRowNext"></div>
                    		<% } %>
               		 <% } %>
				</div>
			<% } else { %>
				<div class = "secondRow">
					<% for(int x = 0; x < width; x++) { %>
	                		<% if(x % 2 == 0) { %>
	                        <div class="secondRowCurrent"></div>
	                    	<% } else { %>
	                        <div class="secondRowNext"></div>
	                    	<% } %>
	                <% } %>
				</div>
			<% } %>   
        <% } %>
	</div>
</body>
</html>