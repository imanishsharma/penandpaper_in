<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="adminheader.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
     
<script>
$(function(){
$('input[name=pMfg]').datepicker({
	format:'YYYY-mm-dd'
});	
});
</script>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<c:url value="/admin/product/addProduct" var="url"></c:url>
<form:form action="${url}"  commandName="product" enctype="multipart/form-data" >
<div class="form-group">
<label for="pId"></label>
<form:hidden  path=""/>
</div>

<div class="form-group">
<label for="pName">Product Name</label>
<form:input path="pName" class="form-control"/>
<form:errors path="pName" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="pDescription">Description</label>
<form:input path="pDescription" class="form-control"/>
<form:errors path="pDescription" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="pPrice">Price</label>
<form:input path="pPrice" class="form-control" />
<form:errors path="pPrice" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="pQuantity">Quantity</label>
<form:input path="pQuantity" class="form-control"/>
<form:errors path="pQuantity" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="pMfg">Mfg Date</label>
<form:input  path="pMfg" class="form-control"/>
</div>

<div class="form-group">
<label for="category">Category</label>
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>   ${c.categoryDetails }
</c:forEach>
</div>

<div class="form-group">
<label for="subCategory">Sub Category</label>
<form:input path="subCategory" class="form-control"/>
<form:errors path="subCategory" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="image">Image</label>
<form:input path="image" type="file"/>
</div>
<input type="submit" value="Add Product" class="btn btn-default">
</form:form>
</div>


</div>
</body>
</html>
