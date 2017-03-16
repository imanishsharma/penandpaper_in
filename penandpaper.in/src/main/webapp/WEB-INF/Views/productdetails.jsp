<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Resources/css/productdetails.css">
<script src="<c:url value="/Resources/js/controller.js"></c:url>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>


 </head>
<body ng-app="app" ng-controller="ProductController" style="background-color:#EEEEEE;">
<div style="margin-top:8px;" class="container">    
		<div class="row">
			<div class="col-sm-8">				
				<div class="panel panel-default  panel--styled">
					<div class="panel-body">
						<div class="col-sm-12 panelTop">
						<h4 style="font-size:30px;margin-bottom:20px;margin-left:100px;" class="text-center"><span class="label label-info">${product.category.categoryDetails}</span></h4>
						
							<div class="col-sm-6">	
							    <c:url var="src" value="Resources/images/${product.pId }.png"></c:url>
							    
								<img style="height:300px;width:300px;" class="img-responsive" src="${src } " alt=""/>
							</div>
							<div class="col-sm-6">	
								<h2>${product.pName }</h2>
								<h4><p>${product.pDescription }</p></h4>
							<strong>	<h3><label>Price <span class="itemPrice">&#8377  ${product.pPrice}</span></label></h3></strong>
							 <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            
							</div>
						</div>
						
						<div class="col-sm-12 panelBottom">
							<div class="col-sm-12 text-right">
								<a href="" ng-click="addToCart(${product.pId })" class="btn btn-success btn-product" ><span class="glyphicon glyphicon-shopping-cart"></span>   Add to Cart</a>						
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
      




	<%@ include file="footer.jsp"%>
	
</body>
</html>
