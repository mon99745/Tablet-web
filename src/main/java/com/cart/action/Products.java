package com.cart.action;

public class Products { // 스프링 : pojo (객체단위처리를 위한 dto)
	private String name;
	private int price;
	
	public Products(String name, int price) {
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}

}
