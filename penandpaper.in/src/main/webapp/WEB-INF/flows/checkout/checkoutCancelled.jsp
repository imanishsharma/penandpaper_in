<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="jumbotron">
                <div class="container">
                 <h2> Checkout cancelled!
             
                 </h2>
                  <p> Your checkout process is cancelled! You may continue shopping... </p>
                </div>


 <section class="container">

  <a  href="<c:url value="/all/product/AllProducts"></c:url>" class="btn btn-default">
                  
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a>
                
 </section>
<script src="<c:url value="/Resources/js/controller.js"></c:url>"></script>
<%@ include file="/WEB-INF/Views/footer.jsp" %>




</body>
</html>