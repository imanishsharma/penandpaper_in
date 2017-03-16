<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isELIgnored="false" %>
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home -penandpaper.in</title>
  <link rel="stylesheet" href="Resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="Resources/css/header.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="Resources/bootstrap/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
     
  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
       <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
    

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
      
     <script>
   $(document).ready(function(){
   $('.dropdown-submenu a.test').on("click", function(e){
   $(this).next('ul').toggle();
   e.stopPropagation();
   e.preventDefault();
    });
   });
  </script>
 </head>
 
  <div id="header" class="jumbotron">
  <div class="container-fluid">
  <div class="row">
  <div class ="col-sm-2">
  <a   class="img-responsive2" class="navbar-brand" href="home"><img id ="brand" src="Resources/images/logo.png"><img/></a>
  </div>
  <div class="col-sm-10">
  <a   class="img-responsive"  class="navbar-brand" href="#"><img id="banner" src="Resources/images/banner.jpg"><img/></a>
  </div>
  </div>
  </div>	
  </div>
 
 
 <!-- Header and navbar -->

 <nav style="background-color:#26254F" class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul id ="navbar" class="nav navbar-nav">
    <li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
     <li><a href="<c:url value="/all/product/AllProducts"></c:url>"><span class="glyphicon glyphicon-gift"></span>  All Products</a></li>
   
    <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-paperclip"></span>   Categories <span class="caret"></span></a>
    <ul class="dropdown-menu">
    <c:forEach var="c" items="${categories }">
			<li>
<a href="<c:url value="/all/product/productsByCategories?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>

     <li><a href="aboutus"><span class="glyphicon glyphicon-user"></span>  About Us</a></li>
        <li><a href="contactus"><span class="glyphicon glyphicon-phone-alt"></span>  Contact Us</a></li>
      <security:authorize access="hasRole('ROLE_ADMIN')">
        <li><a href="<c:url value="/admin/product/productform"></c:url>"><span class="glyphicon glyphicon-level-up	Try it"></span>    ADMIN ZONE</a></li>
        </security:authorize>
           
   </ul>
     
        <ul class="nav navbar-nav navbar-right">
        <c:if test="${pageContext.request.userPrincipal.name !=null }">
        <li><a href="">Welcome! ${pageContext.request.userPrincipal.name }</a></li>
       </c:if>
        <c:if test="${pageContext.request.userPrincipal.name ==null }">
	    <li><a href="<c:url value="/register"></c:url>"><span class="glyphicon glyphicon-pencil"></span>    Register</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>    Login</a></li>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-log-out"></span>   Logout</a></li>
			</c:if>
			<security:authorize access="hasRole('ROLE_USER')">
        <li><a href="<c:url value="/cart/getCartId"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>    Shopping Cart:0</a></li>
        </security:authorize>
       </ul>
    </div>
 </div>
</nav>


 