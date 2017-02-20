package com.penandpaper.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.penandpaper.dao.CategoryDao;
import com.penandpaper.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired
private CategoryDao categoryDao;

	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}
	

}
