<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>




<div class="container-wrapper">
    <div class="container" style="width:100%;">
        <div class="page-header">
            <h1>Product  Page</h1>


            

        <table style="width:80%;">
           <thead>
            <tr class="bg-success">
                <td colspan="5"><h1>Details</h1></td>
            </tr>
            </thead> 
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:50%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} INR </td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>View</a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-trash"></span>Delete</a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
         <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
</div></div></div>
       

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>