package com.ali.greatNumberGame.controllers;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/NumberGame")
public class NumberGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    public NumberGame() {
//        super();
//    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/numberGame.jsp");
		view.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
//		String theResponse = (String) session.getAttribute("response");
		Integer guess = Integer.parseInt(request.getParameter("guess"));
		Random rand = new Random();
		
		if(session.getAttribute("num") == null) {
			session.setAttribute("num", rand.nextInt(100));
		}
		else {
			Integer num = (Integer) session.getAttribute("num");
			System.out.println(num);
			if(guess.equals(num)) {
				session.setAttribute("num", rand.nextInt(100));
				session.setAttribute("response", "correct");
				
			}
			else if((int)guess > (int)num) {
				session.setAttribute("response", "high");	
			}
			else {
				session.setAttribute("response", "low");		
			}
			
			//Redirect to NumberGame
			response.sendRedirect("/Great_Number_Game/NumberGame");
//			doGet(request, response);
		}
	}
}
