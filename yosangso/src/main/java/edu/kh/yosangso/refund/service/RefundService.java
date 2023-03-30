package edu.kh.yosangso.refund.service;

import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.dao.RefundDAO;

public class RefundService {

	public List<Order> refundList(String memberNo) throws Exception{
		
		
		
		Connection conn = getConnection();
		
		RefundDAO dao = new RefundDAO();
		
		List<Order> result = dao.refundList(conn, memberNo);
		
		
		close(conn);
		
		return result;
	}

}