package com.devpro.backend16.services;

import org.springframework.stereotype.Service;

import com.devpro.backend16.entities.SaleOrder;

@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}

}
