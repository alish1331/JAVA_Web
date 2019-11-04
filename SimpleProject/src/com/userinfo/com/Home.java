package com.userinfo.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the value for the query paramater:
				String userFirstName = request.getParameter("firstName");
				String userLastName = request.getParameter("lastName");
				String userFavoriteLanguage = request.getParameter("favoriteLanguage");
				String userHomeTown = request.getParameter("homeTown");
				
		//If any of the queries above is missing, we will put Unknown:
				if (userFirstName == null) {
					userFirstName = "Unknown";
				}
				if (userLastName == null) {
					userLastName = "Unknown";
				}
				if (userFavoriteLanguage == null) {
					userFavoriteLanguage = "Unknown";
				}
				if (userHomeTown == null) {
					userHomeTown = "Unknown";
				}
		
		// TODO Auto-generated method stub
				response.setContentType("text/html");
		        // writes the response on the webpage:
				//Example URL: http://localhost:8080/SimpleProject/Home?lastName=Brown&firstName=Bobby&favoriteLanguage=Java&homeTown=Brooklyn
		        PrintWriter out = response.getWriter();
		        out.write("<h1>Welcome, " + userFirstName + " " + userLastName + "</h1>");
		        out.write("<h3>Your favour language is: " + userFavoriteLanguage + "</h3>");
		        out.write("<h3>Your hometown is: " + userHomeTown + "</h3>");
		        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
