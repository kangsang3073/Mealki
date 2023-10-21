package com.itwillbs.domain;

import java.sql.Timestamp;

public class BoardDTO {
	private int bo_num;
	private String bo_title;
	private String bo_name;
	private String bo_content;
	private int bo_count;
	private Timestamp bo_date;
	private String file;
	private int bo_status;
	private int row_num;
	private int top_fixed;
	private int bo_emp_num;
	
	public int getBo_emp_num() {
		return bo_emp_num;
	}
	public void setBo_emp_num(int bo_emp_num) {
		this.bo_emp_num = bo_emp_num;
	}
	public int getTop_fixed() {
		return top_fixed;
	}
	public void setTop_fixed(int top_fixed) {
		this.top_fixed = top_fixed;
	}
	public int getRow_num() {
		return row_num;
	}
	public void setRow_num(int row_num) {
		this.row_num = row_num;
	}
	public int getBo_status() {
		return bo_status;
	}
	public void setBo_status(int bo_status) {
		this.bo_status = bo_status;
	}
	public int getBo_num() {
		return bo_num;
	}
	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}
	public String getBo_title() {
		return bo_title;
	}
	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}
	public String getBo_name() {
		return bo_name;
	}
	public void setBo_name(String bo_name) {
		this.bo_name = bo_name;
	}
	public String getBo_content() {
		return bo_content;
	}
	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}
	public int getBo_count() {
		return bo_count;
	}
	public void setBo_count(int bo_count) {
		this.bo_count = bo_count;
	}
	public Timestamp getBo_date() {
		return bo_date;
	}
	public void setBo_date(Timestamp bo_date) {
		this.bo_date = bo_date;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
}
