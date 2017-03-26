<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>
<body style="background-color:#EEEEEE;">
<div class="container">
	<div class="row">

       
<form:form commandName="order" class="form-horizontal">
           <div class="col-sm-12">
   
    <div style="margin-top:10px;" class="well bs-component">
                 
              <h2>Check Your Details:</h2>
                 
        <div class="row">
          <div class="col-sm-6">
            <div class="well bs-component">
            <fieldset>
                  <legend>Your Information</legend>
                  <div class="col-sm-12">
      				<div class="row">
      				<div class="col-sm-6 form-group">
							
             		<label for="name" >First Name</label>
             		
             				<form:input path="cart.customer.firstname"  id="firstname" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="name" >Last Name</label>
             				<form:input path="cart.customer.lastname"  id="lastname" class="form-control" />
						</div>
					</div>
						<div class="row">
      				<div class="col-sm-6 form-group">
							
             		<label for="email" >E-mail</label>
             		
             				<form:input path="cart.customer.email"  id="email" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="phone" >Mobile No.</label>
             				<form:input path="cart.customer.phonenumber"  id="phone" class="form-control" />
						</div>
					</div>
  </div>
      </fieldset>
               
</div>
</div>
       <div class="col-sm-6">
            <div class="well bs-component">
            <fieldset>
                  <legend>Billing Address</legend>
                  <div class="col-sm-12">
      				<div class="row">
      				<div class="col-sm-6 form-group">
							
             		<label for="billingAddress" >Address</label>
             		
             				<form:textarea rows="4" path="cart.customer.billingAddress.address"  id="billingAddress" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="billingApartmentNumber" >Apartment No.</label>
             				<form:input path="cart.customer.billingAddress.apartmentNumber"  id="billingApartNumber" class="form-control" />
						
							<label for="billingStreet" >Street Name</label>
             		<form:input path="cart.customer.billingAddress.streetName"  id="billingStreet" class="form-control" />
						</div>
					</div>
						<div class="row">
      				<div class="col-sm-6 form-group">
							
             			<label for="billingCity" >City</label>
             				<form:input path="cart.customer.billingAddress.city"  id="billingCity" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="billingState" >State</label>
             				<form:input path="cart.customer.billingAddress.state"  id="billingState" class="form-control" />
						</div>
					</div>
 	<div class="row">
      				<div class="col-sm-6 form-group">
							
             		<label for="billingCountry" >Country</label>
             		
             				<form:input path="cart.customer.billingAddress.country"  id="billingCountry" class="form-control" />
						</div>
						<div class="col-sm-6">
						<label for="billingZip" >ZIPCODE</label>
             				<form:input path="cart.customer.billingAddress.zipcode"  id="billingZip" class="form-control" />
						</div>
					</div>
 
  </div>
      </fieldset>
                </div>
      
        <button class="btn btn-danger btn-lg" name="_eventId_cancel">  <span class="glyphicon glyphicon-remove"></span> Cancel</button>
         <input type="hidden" name="_flowExecutionKey" />
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="submit"  name="_eventId_customerInfoCollected" >Next <span class="glyphicon glyphicon-chevron-right"></span></button>
                   
</div>
       
</div>


         
                </div>
         
          </div>
                
          </form:form>
            </div>
           
          </div>
       
</body>
<%@ include file="/WEB-INF/Views/footer.jsp" %>
