<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- spring taglib to hide login button after login and hide admin button -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="Linking.jsp"%>
<nav class="navbar navbar-default">
  <div class="container-fluid">
   
    <div class="navbar-header">
    
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
              </button>
      <a class="navbar-brand" href="<c:url value="/"/>">mYeCom</a>
    </div>
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
    <li><a href="<c:url value="/welcome"/>"><span class="glyphicon glyphicon-home"></span>Home</a></li>
    
      <li class="active"><a href="<c:url value="/aboutUs"/>">About</a></li>
      
     
       
         <li><a href="<c:url value="/all"/>">View All Products</a></li> 
    </ul>
   
   <ul class="nav navbar-nav navbar-right">
   
   <li><a href="memberShip">Cart</a></li>
   <li><a href="<c:url value="/contact"/>">Reach Us</a></li>
   
   
   
   <sec:authorize access="hasRole('ROLE_USER')" var="isAdmin">
   </sec:authorize>
   <sec:authorize access="hasRole('ROLE_ADMIN')" var="isUser">
   <li><a href="<c:url value="/admin/all"/>"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
   </sec:authorize>
  
  <c:if test="${(isAdmin)  || (isUser)}">
  
   <li><a href="<c:url value="/logout"/>">LogOut</a></li>
  </c:if> 
  
 
  <c:choose>
    <c:when test="${(isAdmin)  || (isUser)}">
 
    </c:when>    
    <c:otherwise>

   <li class="dropdown">
                   <a href="" class="dropdown-toggle" data-toggle="dropdown">Login<strong class="caret"></strong></a>
                  <ul class="dropdown-menu">

                    <li>
                      <a href="<c:url value="/signup"/>">New User ?</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                      <a href="<c:url value="/login"/>">Sign In</a>

                    </li>
                  </ul>
                </li>
               
 
   </c:otherwise>
</c:choose>
                
    </ul>
    
    
    
   
    </div>
    
  </div>
</nav>