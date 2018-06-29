<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

									<!-- HEADER SECTION -->






<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${images}/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="${css}/Themefisher.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" type="text/css" href="${css}/stroke.css">
<link rel="stylesheet" type="text/css" href="${css}/font-awesome.css">

<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css" href="${css}/setting.css">
<link rel="stylesheet" type="text/css" href="${css}/layers.css">
<link rel="stylesheet" type="text/css" href="${css}/navigation.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="${css}/Myapp.css">



<!-- Site Logo -->
				<div class="logo text-center">
					<a href="index.html"> <!-- replace logo here --> <svg
							width="135px" height="29px"  viewBox="0 0 155 29" version="1.1"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none"
								fill-rule="evenodd" font-size="40"
								font-family="AustinBold, Austin" font-weight="bold">
						        <g id="Group"
								transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="108.94" y="325">AVIATO</tspan>
						            </text>
						        </g>
						    </g>
						</svg>
					</a>
				</div>



<section class="forget-password-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
            <img src="images/logo.png" alt="">
          </a>
          <h2 class="text-center">Welcome Back</h2>
          <form class="text-left clearfix">
            <p>Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.</p>
            <div class="form-group">
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Account email address">
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-main text-center">Request password reset</button>
            </div>
          </form>
          <p class="mt-20"><a href="login.html">Back to log in</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

	



<%@ include file="/WEB-INF/views/templates/footer.jsp" %>