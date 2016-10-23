
<%-- <%@include file="linking.jsp" %> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@include file="Header.jsp"%>


<div class="container">

	<div ng-app="ngAppProduct" ng-controller="allProduct"
		ng-init="test='${brand}'">
		<p>
		
		<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-search"></i>
						</div>

	<input type="text" class="form-control"		placeholder="Search Product" ng-init="searchBox ='${brand}'" ng-model="test">
					</div>
				</div>
		
		
		</p>
		


		<table class="table table-hover" >
			<thead>
				<tr>
					<th></th>
					<th>Name</th>
					<th>brand</th>
					<th>price</th>
					<th >Category</th>
				</tr>
				<tr
					ng-repeat="product in allProductData | orderBy:mydata | filter:test">
					<td><img
						src="<c:url value="${pimg}/{{product.productId}}.jpg"/>"
						hight="50" width="50" class="img img-responsive" /></td>
					<td>{{product.productName}}</td>
					<td>{{product.productBrand}}</td>
					<td>{{product.productPrice}}</td>
					<td>{{product.category}}</td>
					<td>{{product.productPrice}}</td>

					<td><a
						href="<c:url value="/singledata/{{product.productId}}"/>"
						class="btn btn-success">View</a></td>
					<td><a href="" class="btn btn-info">Add to Cart</a></td>
					
					

				</tr>
			</thead>
		</table>
	</div>
</div>
<script src="resources/js/product.js"></script>


<%-- <jsp:include page="foot.jsp"></jsp:include> --%>




<%-- 
<div class="container-fluid">
<div ng-app="ngAppProduct" ng-controller="allProduct" >

				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-search"></i>
						</div>

	<input type="text" class="form-control"		placeholder="Search Product" ng-init="searchBox ='${brand}'" ng-model="searchBox">
					</div>
				</div>
				<tabel>

				<tr	ng-repeat="product in allProductData | orderBy:mydata | filter:searchBox">
					<td><img
						src="<c:url value="${pimg}/{{product.productId}}.jpg"/>"
						hight="100" width="100" class="img img-responsive" /></td>

					<td>sffg{{product.productName}}</td>

					<td>sfg{{product.productBrand}}</td>

					<td><a
						href="<c:url value="/viewbyproduct/{{product.productId}}"/>"
						class="btn btn-success">View</a></td>

					<td><a href="" class="btn btn-info">Add to Cart</a></td>
				</tr>

				</tabel>

			</div>



 --%>

<sript src="resources/js/product.js"></sript>

<%@include file="Footer.jsp"%>