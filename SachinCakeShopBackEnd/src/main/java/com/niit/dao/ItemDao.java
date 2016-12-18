package com.niit.dao;

import java.util.List;

import com.niit.models.Item;

public interface ItemDao {
	void addItem(Item i);
	void editItem(Item i);
	void deleteItem(Item i);
	List<Item>listitem();

}
