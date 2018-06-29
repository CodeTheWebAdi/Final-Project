<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>


<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
            <img src="images/logo.png" alt="">
          </a>
          <h2 class="text-center">Welcome Back</h2>
          <form class="text-left clearfix" name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
          
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
            <div class="form-group">
              <input type="text" class="form-control" id="username" name="username" placeholder="Username">
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-main text-center" >Login</button>
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </div>
          </form>
          <p class="mt-20">New in this site ?<a href="${pageContext.request.contextPath}/register"> Create New Account</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>
