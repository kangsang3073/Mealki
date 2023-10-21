package com.itwillbs.domain;

import java.sql.Date;

public class PageDTO {
	private int pageSize;
	private String pageNum;
	private int currentPage;
	private int startRow;
	private int endRow;
	private int pageBlock;
	private int startPage;
	private int endPage;
	private int count;
	private int pageCount;
	
	private String search_option;
	private String keyword;
	
	private String order_num;
	private String item_name;
	private Date order_date;
	private Date due_date;
	private String item_type;
	private String item_num;
	private String whs_num;
	
	private String wo_num;
	private String business_num;
	private Date out_date;
	private Date dorder_date;
	private Date dout_date;

	
	//승민
	private String sto_num;
	private Date startDate;
	private Date endDate;
	private int emp_num;
	private String unsto_num;	
	
	private String Search;
	
	
	 private int offset;
	
	public String getUnsto_num() {
		return unsto_num;
	}


	public void setUnsto_num(String unsto_num) {
		this.unsto_num = unsto_num;
	}


	public String getSto_num() {
		return sto_num;
	}


	public void setSto_num(String sto_num) {
		this.sto_num = sto_num;
	}


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	public int getEmp_num() {
		return emp_num;
	}


	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}


	@Override
	public String toString() {
		return "PageDTO [pageSize=" + pageSize + ", pageNum=" + pageNum + ", currentPage=" + currentPage + ", startRow="
				+ startRow + ", endRow=" + endRow + ", pageBlock=" + pageBlock + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", count=" + count + ", pageCount=" + pageCount + "]";
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public String getPageNum() {
		return pageNum;
	}


	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getStartRow() {
		return startRow;
	}


	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}


	public int getEndRow() {
		return endRow;
	}


	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}


	public int getPageBlock() {
		return pageBlock;
	}


	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public int getPageCount() {
		return pageCount;
	}


	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	public String getSearch_option() {
		return search_option;
	}
	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	public String getOrder_num() {
		return order_num;
	}


	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}


	public String getItem_name() {
		return item_name;
	}


	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}


	public Date getOrder_date() {
		return order_date;
	}


	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}


	public Date getDue_date() {
		return due_date;
	}


	public void setDue_date(Date due_date) {
		this.due_date = due_date;
	}


	public String getBusiness_num() {
		return business_num;
	}


	public void setBusiness_num(String business_num) {
		this.business_num = business_num;
	}


	public String getWo_num() {
		return wo_num;
	}


	public void setWo_num(String wo_num) {
		this.wo_num = wo_num;
	}


	public Date getOut_date() {
		return out_date;
	}


	public void setOut_date(Date out_date) {
		this.out_date = out_date;
	}


	public String getSearch() {
		return Search;
	}


	public void setSearch(String search) {
		Search = search;
	}


	public String getItem_type() {
		return item_type;
	}


	public void setItem_type(String item_type) {
		this.item_type = item_type;
	}


	public String getItem_num() {
		return item_num;
	}


	public void setItem_num(String item_num) {
		this.item_num = item_num;
	}


	public String getWhs_num() {
		return whs_num;
	}


	public void setWhs_num(String whs_num) {
		this.whs_num = whs_num;
	}


	public Date getDorder_date() {
		return dorder_date;
	}


	public void setDorder_date(Date dorder_date) {
		this.dorder_date = dorder_date;
	}


	public Date getDout_date() {
		return dout_date;
	}


	public void setDout_date(Date dout_date) {
		this.dout_date = dout_date;
	}
	
	 public void calculateOffset() {
	        this.offset = (this.currentPage - 1) * this.pageSize;
	    }
	
}
