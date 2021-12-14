<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import SPRING_FROM -->
<%@ taglib prefix = "sf" uri = "http://www.springframework.org/tags/form"%>



<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <jsp:include page="/WEB-INF/views/khachhang/layout/CSS.jsp"></jsp:include>
  <jsp:include page="/WEB-INF/views/khachhang/layout/Js.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/views/khachhang/layout/script.jsp"></jsp:include>

    <title>Contact Form #5</title>
  </head>
  <body>
  
	<jsp:include page="/WEB-INF/views/khachhang/layout/Header.jsp"></jsp:include>

  <div class="content">  	  
    <div class="container">
   			<div class="row">
	   			<div class="col-2">
	   			</div>
		      	<div class="col-7">
		           	<c:if test="${not empty TB}">
				      <div class="alert alert-success" role="alert" >
				      		${TB }
				      </div>
			      	</c:if>
		      	</div> 
		      	<div class="col-3">
	   			</div>
	      	</div>
	      <div class="row justify-content-center">    
	        <div class="col-md-8">	            
	          <div class="row mb-5">
	            <div class="col-md-4 mr-auto">
	              <h3 class="thin-heading mb-4">MC-Computer</h3>
	              <p>Showroom - Hồ Đắc Đi - Đống Đa - Hà Nội</p>
	            </div>
	            <div class="col-md-6 ml-auto">
	              <h3 class="thin-heading mb-4">Contact Info</h3>
	              <p>T: 0769.006.046 <br> E: vuducminh6969@gmail.com</p>
	            </div>
	          </div>
	          
	          <!-- su dung spring form -->
	          <%-- <div class="row justify-content-center">
	          <form action="${base }/contact" method="post"> 
	            <div class="col-md-12">        
	              <h3 class="thin-heading mb-4">Message Us</h3>              
	                <div class="row">
	                  <div class="col-md-6 form-group">
	                    <input type="text" class="form-control" name="name"  placeholder="Your name">
	                  </div>
	                  <div class="col-md-6 form-group">
	                    <input type="text" class="form-control" name="email" placeholder="Email">
	                  </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 form-group">
	                    <textarea class="form-control" name="message" id="message" cols="30" rows="2" placeholder="Write your message"></textarea>
	                  </div>
	                </div>  
	                <div class="row">
	                  <div class="col-12">
	                    <input type="submit" value="Send Message" class="btn btn-primary rounded-0 py-2 px-4">
	                  <span class="submitting"></span>
	                  </div>
	                </div>
	              <div id="form-message-warning mt-4"></div> 
	              <div id="form-message-success">
	                Your message was sent, thank you!
	              </div>
	            </div>
	            </form> --%>   
	            
	            <!-- su dung spring form dạng 2 -->        
	            <div class="row justify-content-center">
	          <sf:form modelAttribute="contact" action="${base }/contact" method="post" enctype="multipart/form-data"> 
	            <div class="col-md-12">        
	              <h3 class="thin-heading mb-4">Phản hồi</h3>              
	                <div class="row">
	                  <div class="col-md-6 form-group">
	                    <sf:input path="firstName" type="text" autocomplete="off" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Tên"></sf:input>
	                  </div>
	                  <div class="col-md-6 form-group">
	                    <sf:input path="lastName" type="text" autocomplete="off" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Tên đệm"></sf:input>
	                  </div>
	                  <div class="col-md-12 form-group">
	                    <sf:input path="email" type="text" autocomplete="off" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Email"></sf:input>
	                  </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 form-group">
	                    <sf:textarea path="message" autocomplete="off" class="form-control" id="message" name="message" cols="30" rows="2" placeholder="Thông tin phản hồi"></sf:textarea>
	                  </div>
	                </div> 
	                <div class="col-md-12 form-group">
                        <label for="message">File đính kèm</label>
                        <input type="file" class="form-control" autocomplete="off" id="attachment" name="attachment"/>
                    </div>
	                <div class="row">
	                  <div class="col-12">
	                    <button type="submit" value="Send Message"  class="btn btn-primary rounded-0 py-2 px-4">Gửi phản hồi</button>
	                  <span class="submitting"></span>
	                  </div>
	                </div>
	              <div id="form-message-warning mt-4"></div> 
	              <div id="form-message-success">
	                Your message was sent, thank you!
	              </div>
	            </div>
	            </sf:form>
	            
	            
	            <!-- Dạng 3 Ajax -->
	           <%--  <div class="row justify-content-center">	            
	          <form action="${base }/contact" method="POST"> 
	            <div class="col-md-12">        
	              <h3 class="thin-heading mb-4">Message Us</h3>              
	                <div class="row">
	                  <div class="col-md-6 form-group">
	                  <label for="name">Name</label>
	                    <input type="text" class="form-control" name="name" id="name" placeholder="Your name">
	                  </div>
	                  <div class="col-md-6 form-group">
	                  <label for="email">Email</label>
	                    <input type="text" class="form-control" name="email" id="email" placeholder="Email">
	                  </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-12 form-group">
	                  <label for="message">Message</label>
	                    <textarea class="form-control" name="message" id="message" cols="30" rows="2" placeholder="Write your message"></textarea>
	                  </div>
	                </div>  
	                <div class="row">
	                  <div class="col-12">
	                    <button onclick="contact('${base}');" type="button" value="Send Message" class="btn btn-primary rounded-0 py-2 px-4">Submit</button>
	                  </div>
	                  
	                </div>
	                <p class="alert alert-success" id="TB_AJAX"></p>
	              <div id="form-message-warning mt-4"></div> 
	              <div id="form-message-success">
	                Your message was sent, thank you!
	              </div>
	            </div>
	            </form> --%>
	            
	          </div>                            
	        </div>
	      </div>
      </div> 
    </div>
    
    <jsp:include page="/WEB-INF/views/khachhang/layout/Footer.jsp"></jsp:include>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>

  </body>
</html>