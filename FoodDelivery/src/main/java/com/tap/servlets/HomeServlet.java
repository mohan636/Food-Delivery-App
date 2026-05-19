package com.tap.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.tap.DAOImplementation.RestaurantDAOImp;
import com.tap.model.Restaurant;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RestaurantDAOImp restaurantDAOImp=new RestaurantDAOImp();
		
		List<Restaurant> allRestaurants=restaurantDAOImp.getAllRestaurants();
		
		for(Restaurant restaurant:allRestaurants) {
			System.out.println(restaurant);
		}
		
		request.setAttribute("allRestaurants", allRestaurants);
		
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		rd.forward(request,response);
	}

	
}
