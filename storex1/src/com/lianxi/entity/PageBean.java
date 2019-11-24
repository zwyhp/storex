package com.lianxi.entity;

import java.util.List;

import org.springframework.stereotype.Component;

public class PageBean {
	private List<Product> lstProduct;
	private int totalCount;   //所有商品数量
	private int everyPageProCount; //每页显示商品的数量
	private int pageCount;//一共显示多少页
	private int currentPage;//当前第几页
	private String category;//类别
	public PageBean() {
		
	}
	
	public PageBean(List<Product> lstProduct, int totalCount, int everyPageProCount, int pageCount, int currentPage,
			String category) {
		super();
		this.lstProduct = lstProduct;
		this.totalCount = totalCount;
		this.everyPageProCount = everyPageProCount;
		this.pageCount = pageCount;
		this.currentPage = currentPage;
		this.category = category;
	}
	public List<Product> getLstProduct() {
		return lstProduct;
	}
	public void setLstProduct(List<Product> lstProduct) {
		this.lstProduct = lstProduct;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getEveryPageProCount() {
		return everyPageProCount;
	}
	public void setEveryPageProCount(int everyPageProCount) {
		this.everyPageProCount = everyPageProCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
