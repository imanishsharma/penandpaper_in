<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>
<jsp:useBean id="now" class="java.util.Date" />
<body style="background-color:#EEEEEE;">
<div class="container">
    <div class="row">
      <form:form commandName="order" class="form-horizontal">
    
        <div style="margin-top:10px;" class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
            
                <div class="col-xs-6 col-sm-6 col-md-6">
            <img style="height:100px;weight:100px;" src="Resources/images/logo.png"><img/>
                <h3>${order.cart.customer.firstname} ${order.cart.customer.lastname} 
                                 </h3>
                                 <strong>Mobile No.</strong> ${order.cart.customer.phonenumber} <br/>
                                    <address>
                                    <strong>Shipping Address:</strong><br/>
                                    ${order.cart.customer.shippingAddress.address}
                                    <strong>     ${order.cart.customer.shippingAddress.city},<br/> ${order.cart.customer.shippingAddress.state}
                                     ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipcode}
                              </strong>
                                </address>
                          
                              </div>
                <div class="col-xs-6 col-sm-6 col-md-6 	">
                <div class="text-right">
                    <p>
                        <em>Date: <fmt:formatDate type="date" value="${now}" /></em>
                    </p>
                    
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                    </div>
                    <br/>
                    
                    <br/>
                    
                    <br/>
                    <br/>
                    
                    <br/>
                    <br/>
                    
                    <address>
                                    <strong>Billing Address:</strong><br/>
                                    ${order.cart.customer.billingAddress.address}
                                    <strong>     ${order.cart.customer.billingAddress.city},<br/> ${order.cart.customer.shippingAddress.state}
                                     ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipcode}
                              </strong>
                                </address>
                            
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                   <thead>
                                    <tr>
                                        <td>  Product</td>
                                        <td>  Quantity</td>
                                        <td class="text-center">  Price</td>
                                        <td class="text-center">  Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:set var="grandTotal" value="0.0"></c:set>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.pName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.pPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                        <c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
                                    </tr>
                                </c:forEach>

                               

                                </tbody>
                                <tr>
                                  <td class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>&#8377 ${grandTotal}</strong></h4>
                                    </td>
                                    </tr>
                            </table>
                  
               <button class="btn btn-danger btn-lg pull-left	" name="_eventId_cancel">  <span class="glyphicon glyphicon-remove"></span> Cancel</button>
  
        <input type="hidden" name="_flowExecutionKey" />
         <button class="btn btn-primary nextBtn btn-lg pull-right" type="submit"  name="_eventId_orderConfirmed"	 >SUBMIT ORDER <span class="glyphicon glyphicon-chevron-right"></span></button>
          
               <button class="btn btn-primary nextBtn btn-lg pull-right" type="submit"  name="_eventId_backToCollectShippingDetail" ><span class="glyphicon glyphicon-chevron-left"></span> Back </button>
   
                
            </div>
            
        </div>
        </form:form>
    </div>
    </div>
    

<%@ include file="/WEB-INF/Views/footer.jsp" %>
