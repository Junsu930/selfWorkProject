package edu.kh.yosangso.cart.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cart/addPayment")
public class SendTest extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] product = req.getParameterValues("productNo");
		String[] count = req.getParameterValues("count");
		
		System.out.println(Arrays.toString(product));
		System.out.println(Arrays.toString(count));
		
		
		
	}
}