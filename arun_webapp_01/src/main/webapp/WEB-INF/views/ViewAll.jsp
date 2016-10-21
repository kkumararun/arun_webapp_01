
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cp" value="${pageContext.request.contextPath}" />

<jsp:include page="Header.jsp" />


<div class=row>

	<!-- loop to print data from object (productData) which is coming thorough  Controller -->
						<c:forEach items="${productData}" var="data">

			
<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="${cp}/resources/images/productimages/${data.productId}.jpg" alt="">
        <div class="overlay">
           <h2>${data.productBrand} ${data.productName}</h2>
           <a class="info" href="#">Add to Cart</a>
        </div>
    </div>
</div>
<div>			
			
			</c:forEach>
<jsp:include page="Footer.jsp" />

						 
						 
						 