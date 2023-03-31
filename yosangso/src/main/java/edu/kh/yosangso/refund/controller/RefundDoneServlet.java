package edu.kh.yosangso.refund.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.service.RefundService;

@WebServlet("/refundDone")
public class RefundDoneServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] orderNoList = req.getParameterValues("orderNo");
		String memberNo = req.getParameter("memberNo");
		RefundService service = new RefundService();
		List<Order> orderList = new ArrayList<>();
		
		try {
			
			orderList = service.refundList(memberNo);
			int result = service.refundDone(orderNoList);
			
			if(result>0) {
				
				int deleteResult = service.deleteOrder(orderNoList);
				
				if(deleteResult>0) {
					String filePath = "/WEB-INF/views/refund/refundDone.jsp";
					req.setAttribute("refundList", orderList);
					RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
					
					dispatcher.forward(req, resp);
				}else {
					System.out.println("수정실패");
				}
			}else {
				System.out.println("실패");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
