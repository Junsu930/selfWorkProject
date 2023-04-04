package edu.kh.yosangso.cart.controller;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoartTestPageVo {
	
	private int startPage;
	private int endPage;
	private boolean prv, next;
	private int pageNum;
	private int amount = 5;
	private int total;

}
