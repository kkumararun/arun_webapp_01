  <jsp:include page="Header.jsp" />
<div class="container"> <!-- container start -->
<div class="row"><!-- row Start -->

<div class="col-lg-3">
<!-- empty column for space from right -->
</div>
<div class="col-lg-6"><!-- col Start -->
    <article role="login">
                <h3 class="text-center"><i class="fa fa-lock"></i>NEW USER</h3>
                <form class="signup" action="index.html" method="post">
                
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="UserName" required="required">
                  </div>
                  <div class="form-group">
                    <input type="email" class="form-control" placeholder="Email Address" required="required">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Phone Number" required="required">
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="required">
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control" placeholder="Confirm Password" required="required">
                  </div>
                  <div class="form-group">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Please accept the terms and conditions to proceed with your request.
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <input type="submit" class="btn btn-success btn-block"  value="REGISTER">
                  </div>
                
                </form>

                <footer role="signup" class="text-center">
                  <ul>
                    <li>
                      <a href="#">Terms of Use</a>
                    </li>
                    <li>
                      <a href="#">Privacy Statement</a>
                    </li>
                  </ul>
                </footer>

              </article>
    </div> <!-- col over -->
    
    <div class="col-lg-3">
<!-- empty column for space from left -->
</div>
    
    </div> <!-- Row over -->
    
    </div><!-- Contain over -->
  <jsp:include page="Footer.jsp" />