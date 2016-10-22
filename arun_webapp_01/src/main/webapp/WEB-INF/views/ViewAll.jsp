
<%-- <%@include file="linking.jsp" %> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@include file="Header.jsp" %>



<div ng-app="ngAppProduct">
	<div ng-controller="allProduct">


		<div class="container">
		


<div ng-app="ngAppProduct">
	<div ng-controller="allProduct">


		<div class="container">
		
		<div class="form-group">
      <div class="input-group">
 <div class="input-group-addon">
 <i class="fa fa-search"></i></div>

    		<input type="text" class="form-control" placeholder="Search Product" ng-init="searchBox ='${brand}'" ng-model="searchBox">
</div>
</div>


<!-- Left to right-->
<div class="row" ng-repeat="product in allProductData | orderBy:mydata | filter:searchBox">
  <div class="col-sm-4"> 
    <!-- normal -->
    <div class="ih-item circle effect7 left_to_right">
    
        <div class="img"><img  src="<c:url value="${pimg}/{{product.productId}}.jpg"/>" hight="250" width="250"/></div>
        <div class="info">
          <h3>{{product.productName}} {{product.productBrand}}</h3>
          <p>
          <a href="<c:url value="/viewbyproduct/{{product.productId}}"/>" class="btn btn-success">View</a>
          
          <a href="" class="btn btn-info">Add to Cart</a>
          </p>
        </div></div>
    <!-- end normal -->
 
  </div>
  
  <div class="col-sm-4"> 
    <!-- normal -->
    <div class="ih-item circle effect7 left_to_right">
    
        <div class="img"><img  src="<c:url value="${pimg}/{{product.productId}}.jpg"/>" hight="250" width="250"/></div>
        <div class="info">
          <h3>{{product.productName}} {{product.productBrand}}</h3>
          <p>
          <a href="<c:url value="/viewbyproduct/{{product.productId}}"/>" class="btn btn-success">View</a>
          
          <a href="" class="btn btn-info">Add to Cart</a>
          </p>
        </div></div>
    <!-- end normal -->
 
  </div>
  
  <div class="col-sm-4"> 
    <!-- normal -->
    <div class="ih-item circle effect7 left_to_right">
    
        <div class="img"><img  src="<c:url value="${pimg}/{{product.productId}}.jpg"/>" hight="250" width="250"/></div>
        <div class="info">
          <h3>{{product.productName}} {{product.productBrand}}</h3>
          <p>
          <a href="<c:url value="/viewbyproduct/{{product.productId}}"/>" class="btn btn-success">View</a>
          
          <a href="" class="btn btn-info">Add to Cart</a>
          </p>
        </div></div>
    <!-- end normal -->
 
  </div>
  

</div>



<sript src="resources/js/product.js"></sript>

<%@include file="Footer.jsp" %>
