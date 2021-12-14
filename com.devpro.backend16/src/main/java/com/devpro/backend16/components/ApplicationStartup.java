package com.devpro.backend16.components;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import com.devpro.backend16.entities.Categories;
import com.devpro.backend16.entities.Product;
import com.devpro.backend16.services.CategoriesService;
import com.github.slugify.Slugify;

@Component //bean
public class ApplicationStartup implements ApplicationListener<ApplicationReadyEvent>{
    @Autowired 
    private CategoriesService categoriesService;
    
	@Override
	public void onApplicationEvent(final ApplicationReadyEvent event) {
		System.out.println("-----------BEGIN ApplicationReadyEvent-----------");
		this.seedPythonCategory();
		System.out.println("-----------End ApplicationReadyEvent-----------");
	}

	private void seedPythonCategory() {
		//Kiểm tra xem đã có python trong bảng tbl_category chưa ?
		Categories pythonCate = categoriesService.getOneByNativeSQL("SELECT*FROM tbl_category WHERE name = 'Python'");
		
		
		//nếu không có thì thêm mới 
		if(pythonCate==null) {
			pythonCate= new Categories();
			pythonCate.setName("Python");
			pythonCate.setDescription("Python");
			
			//thêm danh sách sản phẩm cho python category
			for(int i=0;i<20;i++) {
				Product p = new Product();
				p.setTitle("Python title" +i);
				p.setShortDes("Python ShortDes"+i);
				p.setDetails("Python Details"+i);
				p.setPrice(new BigDecimal("1000"));
				p.setCreatedDate(new Date());
				
				// gọi hàm utility trong onetomany
				pythonCate.addProduct(p);
				
			}
			//ngược lại chỉnh sửa ngày
		}else {
			pythonCate.setUpdatedDate(new Date());
			pythonCate.setSeo(new Slugify().slugify("Ngôn ngữ lập trình python"));
 
		}
		categoriesService.saveOrUpdate(pythonCate);
		
	}
	

}
