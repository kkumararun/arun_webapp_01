
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cp" value="${pageContext.request.contextPath}" />


<%@include file="Header.jsp" %>

<div ng-app="myApp" ng-controller="myCtrl">
	<div class=row>

		<!-- loop to print data from object (productData) which is coming thorough  Controller -->
		


			<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" ng-repeat="data in productData" >
				<div class="hovereffect">
					<img class="img-responsive"
						src="/resources/images/productimages/${data.productId}.jpg"
						alt="">
					<div class="overlay">
						<h2>${data.productBrand}${data.productName}</h2>
						<a class="info" href="#">Add to Cart</a>
					</div>
				</div>
			</div>
	</div>
	</div>
	<%@include file="Footer.jsp"%>

	<script src="<c:url value="/resources/js/product.js" />" />