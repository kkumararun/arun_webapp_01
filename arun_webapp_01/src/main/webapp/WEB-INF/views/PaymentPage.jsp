<%@include file="Linking.jsp" %>

<style>
.credit-card-div  span { padding-top:10px; }
.credit-card-div img { padding-top:30px; }
.credit-card-div .small-font { font-size:9px; }
.credit-card-div .pad-adjust { padding-top:10px; }
</style>


<form:form action="#" class="credit-card-div">
<div class="panel panel-default" >
 <div class="panel-heading">
     
      <div class="row ">
              <div class="col-md-12">
                  <input type="text" class="form-control" placeholder="Enter Card Number" />
              </div>
          </div>
     <div class="row ">
              <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" > Expiry Month</span>
                  <input type="text" class="form-control" placeholder="MM" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  Expiry Year</span>
                  <input type="text" class="form-control" placeholder="YY" />
              </div>
        <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  CCV</span>
                  <input type="text" class="form-control" placeholder="CCV" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
<img src="assets/img/1.png" class="img-rounded" />
         </div>
          </div>
     <div class="row ">
              <div class="col-md-12 pad-adjust">

                  <input type="text" class="form-control" placeholder="Name On The Card" />
              </div>
          </div>
     <div class="row">
<div class="col-md-12 pad-adjust">
    <div class="checkbox">
    <label>
      <input type="checkbox" checked class="text-muted"> Save details for fast payments <a href="#"> learn how ?</a>
    </label>
  </div>
</div>
     </div>
       <div class="row ">
            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                 <input type="submit"  class="btn btn-danger" value="CANCEL" />
              </div>
              <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                  <input type="submit" name="_eventId_submit" class="btn btn-warning btn-block" value="PAY NOW" />
              </div>
          </div>
     
                   </div>
              </div>
</form:form>