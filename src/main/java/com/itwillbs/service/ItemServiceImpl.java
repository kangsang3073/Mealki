package com.itwillbs.service;

import java.util.List;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ItemDAO;
import com.itwillbs.domain.CustomerDTO;
import com.itwillbs.domain.ItemDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Inject
	private ItemDAO itemDAO;
	
	@Override
	public List<ItemDTO> getItemList(PageDTO pageDTO) {
		System.out.println("ItemServiceImpl getItemList()");
		
		// 시작하는 행번호 구하기
		int startRow=(pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1;
		int endRow = startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setStartRow(startRow);
		pageDTO.setEndRow(endRow);
		
		return itemDAO.getItemList(pageDTO);
	}

	@Override
	public int getItemCount(PageDTO pageDTO) {
		System.out.println("ItemServiceImpl getItemCount()");
		
		return itemDAO.getItemCount(pageDTO);
	}


	@Override
	public void save(ItemDTO item) {
		System.out.println("ItemServiceImpl save");
		if(itemDAO.selectItem(item.getItem_num()) == null){
			itemDAO.insertItem(item);
		}else{
			itemDAO.updateItem(item);
		}

	}

	@Override
	public void deleteItem(String itemNum) {
		itemDAO.deleteItem(itemNum);
	}

	@Override
	public String getMaxItemNum(String prefix) {
		// TODO Auto-generated method stub
		return itemDAO.getMaxItemNum(prefix);
	}

	@Override
	public List<CustomerDTO> getCustomerList() {
		// TODO Auto-generated method stub
		return itemDAO.getCustomerList();
	}

	
	 
}


