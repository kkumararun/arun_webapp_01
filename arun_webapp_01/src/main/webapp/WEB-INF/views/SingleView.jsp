
<%@include file="Header.jsp"%>

<div class="container-fluid">

<%-- <div ng-app="ngAppProduct" ng-controller="allProduct" >

<input type="hidden" class="form-control" placeholder="Search Product" ng-init="searchBox ='${sno}'" ng-model="search">


<div class="row" ng-repeat="product in allProductData | orderBy:mydata | filter:searchBox">

 --%>
<div class="col-md-3">
			
			<div class="list-group">
					
				<a href="<c:url value="/viewall/Home"/>" class="list-group-item">Skin
					Care, Make Up & More</a> <a href="<c:url value="/viewall/Nutrition"/>"
					class="list-group-item">Nutrition<br> Vitamins &
					Supplements
				</a> <a href="<c:url value="/viewall/Personal"/>"
					class="list-group-item">Personal Care<br> Hair Care, Body
					Care, Oral Care
				</a> <a href="<c:url value="/viewall/Beauty"/>" class="list-group-item">Beauty<br>

					Skin Care, Make Up & More
				</a>

			</div>
		</div>



<div class="col-sm-4">
<img  src="<c:url value="${pimg}/${product.productId}.jpg"/>" height="300" width="350"/>
</div>

<br><br><br><br><br><br>
<div class="col-sm-4">

<table>	
<tr>
<td>Product ID :</td>
<td>  ${product.productId}</td>
</tr>		

<tr>
<td>Product Name:</td>
<td>${product.productName}</td>
</tr>		


<tr>
<td>Brand :</td>
<td>${product.productBrand}</td>
</tr>				

<tr>
<td>Category :</td>
<td>${product.category}</td>
</tr>				


<tr>
<td>Price</td>
<td>${product.productPrice}</td>
</tr>				
						
						<tr>
<td>			<a href="<c:url value="/all"/>"	class="btn btn-success">Back</a></td>
<td><a href="" class="btn btn-info">Add to Cart</a></td>
</tr>				
					
						
</table>
</div>
<div class="col-sm-2">
</div>
</div>
<!-- </div>
</div>
 -->
 <br><br><br><br><br><br>
<%@include file="Footer.jsp"%>