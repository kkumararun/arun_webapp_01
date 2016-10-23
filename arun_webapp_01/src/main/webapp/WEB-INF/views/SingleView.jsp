
<%@include file="Header.jsp"%>

<div class="container-fluid">
<%-- <div ng-app="ngAppProduct" ng-controller="allProduct" >

<input type="hidden" class="form-control" placeholder="Search Product" ng-init="searchBox ='${sno}'" ng-model="search">


<div class="row" ng-repeat="product in allProductData | orderBy:mydata | filter:searchBox">

 --%>

<div class="col-sm-2">
</div>

<div class="col-sm-4">
<img  src="<c:url value="${pimg}/${product.productId}.jpg"/>" height="300" width="350"/>
</div>


<div class="col-sm-4">
<br>${product.productId}
						${product.productName}<br>
						${product.productBrand}<br>
						${product.category}<br>
						${product.productPrice}
					<a href="<c:url value="/all"/>"	class="btn btn-success">Back</a>

					<a href="" class="btn btn-info">Add to Cart</a>
						

</div>
<div class="col-sm-2">
</div>
</div>
<!-- </div>
</div>
 -->
<%@include file="Footer.jsp"%>