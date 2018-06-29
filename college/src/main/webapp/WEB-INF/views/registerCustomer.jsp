<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>

<html>
<head>


<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
            <img src="${images}/logo.png" alt="">
          </a>
          <h2 class="text-center">Create Your Account</h2>
          <form:form class="text-left clearfix" method="post" 
          action="${pageContext.request.contextPath}/register" 
          commandName="customer">
          	
          <div class="form-group">
          <label for="Fname">Name</label>	
          	<form:input path="customerName" type="text" class="form-control"  placeholder=" Name" id="Fname"/>
      		<form:errors path="customerName"></form:errors>
      	  </div>
      	
      	  <div class="form-group">
          <label for="username">User Name</label>	
          	<form:input path="username" type="text" class="form-control"  placeholder="Username" id="username"/>
      		<form:errors path="username"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="email">Email</label>	
          	<form:input path="customerEmail" type="text" class="form-control"  placeholder="Email" id="email"/>
      		<form:errors path="customerEmail"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="password">Password</label>	
          <div id="register">
          	<form:input path="password" type="password" pattern="^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$" title=" Start anchor
     Ensure string has two uppercase letters.
     Ensure string has one special case letter.
     Ensure string has two digits.
     Ensure string has three lowercase letters. 
     Ensure string is of length 8.
     End anchor." class="form-control"  placeholder="Password" id="password"/>
      		<span id="result"></span>
       		<form:errors path="password"></form:errors>
       		</div>
      	  </div>
      	  
      	   <div class="form-group">
          <label for="customerPhone">Phone</label>	
          	<form:input path="customerPhone" type="text" class="form-control"  placeholder="+91-888-888-8888" id="customerPhone"/>
      		<form:errors path="customerPhone"></form:errors>
      	  </div>
      	  
      	   <div class="form-group text-center">
          <label for="BillingAddress">BILLING ADDRESS</label>	
      	  </div>
      	  
      	  <div class="form-group">
          <label for="streetName">Street Name</label>	
          	<form:input path="BillingAddress.streetName" type="text" class="form-control"  placeholder="Street Name" id="streetName"/>
      		<form:errors path="BillingAddress.streetName"></form:errors>
      	  </div>
      	  
      	   <div class="form-group">
          <label for="apartmentNumber">Apartment Number</label>	
          	<form:input path="BillingAddress.apartmentNumber" type="text" class="form-control"  placeholder="Apartment Number" id="apartmentNumber"/>
      		<form:errors path="BillingAddress.apartmentNumber"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="city">City</label>	
          	<form:input path="BillingAddress.city" type="text" class="form-control"  placeholder="city" id="city"/>
      		<form:errors path="BillingAddress.city"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="state">State</label>	
          	<form:input path="BillingAddress.state" type="text" class="form-control"  placeholder="State" id="state"/>
      		<form:errors path="BillingAddress.state"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="country">Country</label>	
          	<form:input path="BillingAddress.country" type="text" class="form-control"  placeholder="Country" id="country"/>
      		<form:errors path="BillingAddress.country"></form:errors>
      	  </div>
      	  
      	   <div class="form-group">
          <label for="zipCode">Zip Code</label>	
          	<form:input path="BillingAddress.zipCode" type="text" class="form-control"  placeholder="Zip Code" id="zipCode" onchange="fill()"/>
      		<form:errors path="BillingAddress.zipCode"></form:errors>
      	  </div>
      	  
      	  <div class="form-group text-center">
          <label for="ShippingAddress">Shipping Address</label>	
      	  </div>
      	
      	<div class="form-group">
          <label for="streetName">Street Name</label>	
          	<form:input path="ShippingAddress.streetName" type="text" class="form-control"  placeholder="Street Name" id="s_streetName"/>
      		<form:errors path="ShippingAddress.streetName"></form:errors>
      	  </div>
      	  
      	   <div class="form-group">
          <label for="apartmentNumber">Apartment Number</label>	
          	<form:input path="ShippingAddress.apartmentNumber" type="text" class="form-control"  placeholder="Apartment Number" id="s_apartmentNumber"/>
      		<form:errors path="ShippingAddress.apartmentNumber"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="city">City</label>	
          	<form:input path="ShippingAddress.city" type="text" class="form-control"  placeholder="city" id="s_city"/>
      		<form:errors path="ShippingAddress.city"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="state">State</label>	
          	<form:input path="ShippingAddress.state" type="text" class="form-control"  placeholder="State" id="s_state"/>
      		<form:errors path="ShippingAddress.state"></form:errors>
      	  </div>
      	  
      	  <div class="form-group">
          <label for="country">Country</label>	
          	<form:input path="ShippingAddress.country" type="text" class="form-control"  placeholder="Country" id="s_country"/>
      		<form:errors path="ShippingAddress.country"></form:errors>
      	  </div>
      	  
      	   <div class="form-group">
          <label for="zipCode">Zip Code</label>	
          	<form:input path="ShippingAddress.zipCode" type="text" class="form-control"  placeholder="Zip Code" id="s_zipCode"/>
      		<form:errors path="ShippingAddress.zipCode"></form:errors>
      	  </div>
      	 
      	<div class="g-recaptcha" data-sitekey="6LeRWkQUAAAAACovsb9CxL0XdiiNtt95tXGpBn30"></div>	
      		 <div class="text-center">
              <button type="submit" class="btn btn-main text-center">Sign In</button>
            </div>
          </form:form>
         
          <p class="mt-20">Already hava an account ?<a href="${pageContext.request.contextPath}/login"> Login</a></p>
          <p><a href="${pageContext.request.contextPath}/fp"> Forgot your password?</a></p>
        </div>
      </div>
    </div>
  </div>
</section>
<script type="text/javascript">
	
		function fill(){
			var s = document.getElementById("streetName").value;
			var a = document.getElementById("apartmentNumber").value;
			var c = document.getElementById("city").value;
			var state = document.getElementById("state").value;
			var country = document.getElementById("country").value;
			var zipCode = document.getElementById("zipCode").value;	
			
			document.getElementById("s_streetName").value=s;
			document.getElementById("s_apartmentNumber").value=a;
			document.getElementById("s_city").value=c;
			document.getElementById("s_state").value=state;
			document.getElementById("s_country").value=country;
			document.getElementById("s_zipCode").value=zipCode;
		}
	
		
</script>
</body>
</html>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>