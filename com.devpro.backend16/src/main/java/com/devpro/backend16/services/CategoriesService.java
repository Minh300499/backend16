package com.devpro.backend16.services;

import org.springframework.stereotype.Service;

import com.devpro.backend16.entities.Categories;

@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}
	

}
