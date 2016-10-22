<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="cp" value="${pageContext.request.contextPath}" />


<%@include file="../Header.jsp"%>


<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<article role="login">
				<form:form method="POST" action="${cp}/admin/insert"
					modelAttribute="product" enctype="multipart/form-data">


					<c:if test="${!empty product}">
						<tr>
							<td><form:label path="productId">
									<spring:message text="Product Id" />
								</form:label></td>
							<td><form:input path="productId" readonly="true"
									disabled="true" /> <form:hidden path="productId" /> <span
								class="glyphicon glyphicon-lock "></span></td>
						</tr>
					</c:if>



					<div class="form-group">
						<%-- <td><form:label path="productName">Product Name</form:label></td> --%>
						<form:input path="productName" class="form-control"
							placeholder="Product Name" required="required" />
					</div>
					<div class="form-group">
						<%-- <td><form:label path="productBrand">Product Brand</form:label></td> --%>
						<form:input path="productBrand" class="form-control"
							placeholder="Product Brand" required="required" />
					</div>

					<%-- 	<td><form:label path="productCategory">Product Category</form:label></td> --%>
					<div class="form-group">
						<form:input path="productQuantity" class="form-control"
							placeholder="Product Quantity" required="required" />
					</div>

					<div class="form-group">
						<form:input path="productPrice" class="form-control"
							placeholder="Product Price" required="required" />
					</div>



					<div class="form-group">
						<form:label path="file">
							<spring:message text="Choose Image" />
						</form:label>
						</td>
						<form:input path="file" type="file" class="form-control"
							placeholder="Select File" required="required" />
					</div>

					<div class="form-group">
						<c:if test="${!empty prdouct.productName}">
							<input type="submit" class="btn btn-success btn-block"
								value="Update" />
						</c:if>
						
						<c:if test="${empty product.productName}">
							<input type="submit" class="btn btn-success btn-block"
								value="Insert Product" />
						</c:if>
					</div>

				</form:form>

			</article>
		</div>
		<!-- col end -->

		<div class="col-sm-2"></div>
		<!-- col end -->

	</div>
	<!-- row end -->


	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 ">
			<div class="table-responsive">
				<table class="table table-hover table-condensed cf table2">
					<thead class="cf">
						<tr>
							<th></th>
							<th>ProductID</th>
							<th>Product Name</th>
							<th>Product Brand</th>
							<th>Product Category</th>
							<th>Product Price</th>
							<th>Edit Product</th>
							<th>Delete Product</th>
						</tr>
					</thead>
					<tbody>
						<!-- loop to print data from object (productData) which is coming thorough  Controller -->
						<c:forEach items="${productData}" var="data">

							<tr>
								<!-- we are getting image from server local storage and rest data from H2 DataBase -->
								<td><img alt=""
									src="${cp}/resources/images/productimages/${data.productId}.jpg"
									height="100ppx" width="100px" /></td>
								<td class="active">${data.productId}</td>
								<td align="left">${data.productName}</td>
								<td>${data.productBrand}</td>
								<td>${data.productQuantity}</td>
								<td>${data.productPrice}</td>
								<td>
									<!-- button to edit product  --> <a
									href="<c:url value='/admin/edit/${data.productId}' />"><span
										class="glyphicon glyphicon-pencil btn btn-primary"></span></a></a>
								</td>
								<td>
									<!-- button to delete product  --> <a
									href="<c:url value='/admin/remove/${data.productId}'/>"> <span
										class="glyphicon glyphicon-trash btn btn-danger"></span></a>
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>


<%@include file="../Footer.jsp"%>

