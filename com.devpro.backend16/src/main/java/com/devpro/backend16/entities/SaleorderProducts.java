package com.devpro.backend16.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="tbl_saleorder_products")
public class SaleorderProducts extends BaseEntity{
	@Column(name="saleorder_id",nullable=false)
	private Integer saleorder_id;
	
	@Column(name="product_id",nullable=false)
	private Integer product_id;
	
	@Column(name="quality",nullable=false)
	private Integer quality;

	public Integer getSaleorder_id() {
		return saleorder_id;
	}

	public void setSaleorder_id(Integer saleorder_id) {
		this.saleorder_id = saleorder_id;
	}

	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}
}
