<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<br><br>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/images/beauty.jpg" height="240" width="240">
  <div class="card-block">
    <h4 class="card-title">Beauty</h4>
    <p class="card-text">Skin Care, Make Up & More</p>
    <a href="<c:url value="/viewall/Beauty"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>

<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/images/personal.jpg" height="240" width="240">
  <div class="card-block">
    <h4 class="card-title">Personal Care</h4>
    <p class="card-text">Hair Care, Body Care, Oral Care</p>
    <a href="<c:url value="/viewall/Personal"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>


<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/images/nutrition.jpg" height="240" width="240">
  <div class="card-block">
    <h4 class="card-title">Nutrition </h4>
    <p class="card-text">Vitamins & Supplements</p>
    <a href="<c:url value="/viewall/Nutrition"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>	

<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/images/home.jpg" height="240" width="240" ">
  <div class="card-block">
    <h4 class="card-title">At Home</h4>
    <p class="card-text">All Home Care Products are Available </p>
    <a href="<c:url value="/viewall/Home"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>
</div>

</div>








