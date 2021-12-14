package com.devpro.backend16.services;

import org.springframework.stereotype.Service;

import com.devpro.backend16.entities.ProductImages;

@Service
public class ProductImagesService extends BaseService<ProductImages> {

	@Override
	protected Class<ProductImages> clazz() {
		return ProductImages.class;
	}

}
