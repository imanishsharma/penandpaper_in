<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="<c:url value="/Resources/js/controller.js"></c:url>"></script>

</head>
<body >
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    <tr  ng-repeat="cartItem in  cart.cartItems">
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <c:url var="src" value="Resources/images/{{cartItem.product.pId }}.png"></c:url>
			     	 <img class="media-object" src="${src }" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">{{cartItem.product.pName}}</a></h4>
                               <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="{{cartItem.quantity}}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>&#8377 {{cartItem.product.pPrice}}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>&#8377 {{cartItem.totalPrice}}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="" ng-click="removeFromCart(cartItem.id)" type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </a></td>
                    </tr>
                                       <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>&#8377 {{calculateGrandTotal()}}</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Shipping Charges</h5></td>
                        <td class="text-right"><h5><strong>&#8377 0.00</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>&#8377 {{calculateGrandTotal()}}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                        <td>
                        <a href="<spring:url value="/order/${cartId}"></spring:url>" class="btn btn-success pull-right"> Check Out </a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>











</div>
</div>