<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                 <h2>   <img style="height:100px;width:100px;" src="Resources/images/empty.png"><img/>
                 Oops! Your Cart is Empty...
                  <a  href="<c:url value="/all/product/AllProducts"></c:url>" class="btn btn-default">
                  
                            <span class="glyphicon glyphicon-shopping-cart"></span> Shop With Us
                        </a>
                 </h2>
                </div>
            </div>
        </section>
</div>
</div>
       

<%@ include file="/WEB-INF/Views/footer.jsp" %>
