package com.tap.servlets;

import java.io.IOException;
import java.util.List;

import com.tap.DAO.MenuDAO;
import com.tap.DAOImplementation.MenuDAOImp;
import com.tap.model.Menu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/menu")
public class MenuServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String rid = req.getParameter("restaurantId");

		if (rid == null || rid.equals("null") || rid.isEmpty()) {

			resp.sendRedirect("home");

			return;
		}

		int restaurantId = Integer.parseInt(rid);

		MenuDAO mdao = new MenuDAOImp();

		List<Menu> menuByRestaurantId = mdao.getMenuByRestaurantId(restaurantId);

		req.setAttribute("menuByRestaurantId", menuByRestaurantId);

		for (Menu menu : menuByRestaurantId) {
			System.out.println(menu);
		}

		RequestDispatcher rd = req.getRequestDispatcher("/menu.jsp");

		rd.forward(req, resp);
	}
}