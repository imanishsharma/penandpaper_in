<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="adminheader.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[10,5,7,-1],[10,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>
</head>
<body style="background-color:#EEEEEE;">
      
	<div style="margin-top:10px;margin-bottom:10px;color:blue;"class="container">
	<h1> <i class="fa fa-shopping-cart"></i> Products </h1>
   

		<table  class="table table-bordered table-hover table-striped">
			<thead>
				<tr style="color:#26254F;">
					<th>Product Image</th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Category</th>
					<th>Sub Category</th>
					<th>View/Edit/Delete</th>
			   </tr>
			</thead>
			<c:forEach var="p" items="${productList}">
				<tr>
				<td>
				<c:url var="src" value="Resources/images/${p.pId }.png"></c:url>
				<img style="height:100px;width:100px;" src="${src } "/>
				</td>
					<td>${p.pName }</td>
					<td>${p.pDescription }</td>
					<td>${p.category.categoryDetails}</td>
					<td>${p.subCategory}</td>
					<td>
					<c:url var="url" value="/admin/product/viewproduct/${p.pId }"></c:url>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
					<c:url var="delete" value="/admin/product/deleteproduct/${p.pId }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
				    <c:url var="edit" value="/admin/product/editform/${p.pId }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </td>
				</tr>
			</c:forEach>
		</table>

	</div>
	<%@ include file="footer.jsp"%>
	
</body>
</html>
