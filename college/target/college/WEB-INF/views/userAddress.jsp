<%@include file="./templates/header.jsp"%>

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

					<li><a class="active"
						href="${pageContext.request.contextPath}/userAddress">Address</a></li>
					<li><a href="${pageContext.request.contextPath}/userProfile">Profile
							Details</a></li>
				</ul>
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									
									<th>Name</th>
									<th>Address</th>
									<th>Country</th>
									<th class="col-md-2 col-sm-3">Phone</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${customerName}</td>
									<td>${address}</td>
									<td>${customerCountry}</td>
									<td>${customerPhone}</td>
									<td>
										<div class="btn-group" role="group">
											<button type="button" class="btn btn-default">
												<i class="tf-pencil2" aria-hidden="true"></i>
											</button>
											<button type="button" class="btn btn-default">
												<i class="tf-ion-close" aria-hidden="true"></i>
											</button>
										</div>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="./templates/footer.jsp"%>