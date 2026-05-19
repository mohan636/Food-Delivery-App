package com.tap.servlets;

import com.tap.DAO.RestaurantDAO;
import com.tap.DAOImplementation.RestaurantDAOImp;
import com.tap.model.Restaurant;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String searchQuery = req.getParameter("searchQuery");
        RestaurantDAO restaurantDAO = new RestaurantDAOImp();
        List<Restaurant> restaurants;
        
        if (searchQuery == null || searchQuery.trim().isEmpty()) {
            restaurants = restaurantDAO.getAllRestaurants();
        } else {
            restaurants = restaurantDAO.searchRestaurants(searchQuery);
        }
        
        req.setAttribute("allRestaurants", restaurants);
        RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
        rd.forward(req, resp);
	}
}
