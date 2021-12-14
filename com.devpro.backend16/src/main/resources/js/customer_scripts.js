
contact = function(baseUrl) {
	// tạo javascript object.  
	// data là dữ liệu cùng kiểu với RequestMapping
	let data = {
		firstName: jQuery("#firstName").val(), // lay theo id
		lastName: jQuery("#lastName").val(), // lay theo id
		email: jQuery("#email").val(), // lay theo id
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: baseUrl + "/ajax/contact", //->action
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(data),

		dataType: "json", // kieu du lieu tra ve tu controller la json vì controlelr action trả về kiểu Map
		success: function(jsonResult) {
			/*alert(JSON.stringify(jsonResult));
			alert(jsonResult.message);*/
			jQuery("#TB_AJAX").html(jsonResult.message);
		},
		error: function(jqXhr, textStatus, errorMessage) {
			
		}
	});
}
