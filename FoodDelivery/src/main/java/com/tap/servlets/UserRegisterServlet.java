package com.tap.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.tap.DAOImplementation.UserDAOImpl;
import com.tap.model.User;


@WebServlet("/UserRegisteration")
public class UserRegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String address = request.getParameter("address");
		String role = request.getParameter("role");
		
		User user = new User(name, username, password, email, phonenumber, address, role);
		
		UserDAOImpl udao = new UserDAOImpl();
		
		udao.addUser(user);
		
		response.sendRedirect("login.jsp");
	}

	

}
