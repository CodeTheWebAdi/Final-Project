<%@include file="./templates/header.jsp" %>
<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">Dashboard</h1>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li class="active">my account</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="user-dashboard page-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="list-inline dashboard-menu text-center">
          <li><a href="${pageContext.request.contextPath}/userAddress">Address</a></li>
          <li><a class="active" href="${pageContext.request.contextPath}/Profile_Details">Profile Details</a></li>
        </ul>
        <div class="dashboard-wrapper dashboard-user-profile">
          <div class="media">
            <div class="pull-left text-center" href="#">
              <img class="media-object user-img" src="" alt="Image">
              <a href="" class="btn btn-transparent mt-20">Change Image</a>
            </div>
            <div class="media-body">
              <ul class="user-profile-list">
                <li><span>Full Name:</span>${customerName}</li>
                <li><span>Country:</span>${customerCountry}</li>
                <li><span>Email:</span>${customerEmail}</li>
                <li><span>Phone:</span>${customerPhone}</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<%@include file="./templates/footer.jsp" %>