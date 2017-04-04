<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>

<%@ page isELIgnored="false" %>
<body style="background-color:#EEEEEE;">
<div class="container">
	<div class="row">

       
<form:form commandName="order" class="form-horizontal">
           <div class="col-sm-12">
   
   
<div class="col-sm-6">
   <div class="row">
       
            <div style="margin-top:10px;" class="well bs-component">
            <fieldset>
                  <legend>Shipping Address</legend>
                  <div class="col-sm-12">
      				<div class="row">
      				<div class="col-sm-6 form-group">
							
             		<label for="shippingAddress" >Address</label>
             		
             				<form:textarea rows="4" path="cart.customer.shippingAddress.address"  id="shippingAddress" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="shippingApartmentNumber" >Apartment No.</label>
             				<form:input path="cart.customer.shippingAddress.apartmentNumber"  id="shippingApartNumber" class="form-control" />
						
							<label for="shippingStreet" >Street Name</label>
             		<form:input path="cart.customer.shippingAddress.streetName"  id="shippingStreet" class="form-control" />
						</div>
					</div>
						<div class="row">
      				<div class="col-sm-6 form-group">
							
             			<label for="shippingCity" >City</label>
             				<form:input path="cart.customer.shippingAddress.city"  id="shippingCity" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="shippingState" >State</label>
             				<form:input path="cart.customer.shippingAddress.state"  id="shippingState" class="form-control" />
						</div>
					</div>
 	<div class="row">
      				<div class="col-sm-6 form-group">
							
             		<label for="shippingCountry" >Country</label>
             		
             				<form:input path="cart.customer.shippingAddress.country"  id="shippingCountry" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="shippingZip" >ZIPCODE</label>
             				<form:input path="cart.customer.shippingAddress.zipcode"  id="billingZip" class="form-control" />
						</div>
					</div>
 </div>
 <button class="btn btn-danger btn-lg pull-left	" name="_eventId_cancel">  <span class="glyphicon glyphicon-remove"></span> Cancel</button>
  
        <input type="hidden" name="_flowExecutionKey" />
         <button class="btn btn-primary nextBtn btn-lg pull-right" type="submit"  name="_eventId_shippingDetailCollected"	 >Next <span class="glyphicon glyphicon-chevron-right"></span></button>
          
               <button class="btn btn-primary nextBtn btn-lg pull-right" type="submit"  name="_eventId_backToCollectCustomerInfo" ><span class="glyphicon glyphicon-chevron-left"></span> Back </button>
   
 </fieldset>
  
 </div>
 
         
 </div>
 </div>
 </div>
 </form:form>
 </div>
 </div>
 </body>
<%@ include file="/WEB-INF/Views/footer.jsp" %>
