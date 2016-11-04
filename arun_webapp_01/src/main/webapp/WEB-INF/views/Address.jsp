<style>
/* body {
       background: #eee !important;
} */
.wrapper {
       margin-top: 80px;
       margin-bottom: 80px;
}
 
.form-signin {
       max-width: 580px;
       padding: 15px 35px 45px;
       margin: 0 auto;
       background-color: #f4f7f8;
       border: 1px solid rgba(0, 0, 0, 0.1);
}
 
.form-signin-heading {
       margin-bottom: 30px;
}
</style>
 
 
 
<div>
       <%@ include file="Header.jsp"%>
</div>
 
 
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
 
<div>
       <p>&nbsp;</p>
       <p>&nbsp;</p>
       <p>&nbsp;</p>
       <p>&nbsp;</p>
 
</div>
<div class="container">
       <div class="row">
 
             <div class="col-md-2"></div>
             <div class="col-md-8">
 
 
 
                    <sf:form class="form-signin" modelAttribute="billingAddress">
 
                           <h2 class="form-signin-heading btn-info" style="width: 100%">Billing
                                 Address</h2>
                           <table class="table">
                                 <tr>
                                        <td><form:label path="cname">
                                                     <spring:message text="Customer Name" />
                                               </form:label></td>
                                        <td><form:input path="cname" style="width:150px;"
                                                     class="form-control" /></td>
                                                     <form:input type="hidden" path="cname"></form:input>
                                        <td><form:errors path="cname" /></td>
                                 </tr>
 
                                 <tr>
                                        <td><form:label path="caddress">
                                                     <spring:message text="Address" />
                                               </form:label></td>
                                        <td><form:input path="caddress" style="width:150px;"
                                                     class="form-control" /><form:input type="hidden" path="caddress"></form:input></td>
                                        <td><form:errors path="caddress" /></td>
                                 </tr>
 
                                 <tr>
                                        <td><form:label path="phone">
                                                     <spring:message text="phone" />
                                               </form:label></td>
                                        <td><form:input path="phone" style="width:150px;"
                                                     class="form-control" /><form:input type="hidden" path="cname"></form:input></td>
                                        <td><form:errors path="phone" /></td>
                                 </tr>
 
                                 <tr>
                                        <td><form:label path="zipCode">
                                                     <spring:message text="Zipcode" />
                                               </form:label></td>
                                        <td><form:input path="zipCode" style="width:150px;"
                                                     class="form-control" /></td>
                                        <td><form:errors path="zipCode" /></td>
                                 </tr>
 
 
                           </table>
 
                           <div class="row">
                                 <div class="col-md-2">
                                        <input class="btn btn-info" name="_eventId_edit" type="submit"
                                               value="Prev" />
                                 </div>
                                 <div class="col-md-8"></div>
                                 <div class="col-md-2">
                                        <input class="btn btn-info" name="_eventId_submit" type="submit"
                                               value="Next" />
                                 </div>
                           </div>
                    </sf:form>
 
 
 
             </div>
 
       </div>
 
</div>
 
 
 
 
 
 
 
 
 
 
 
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
 
 
 
 
 
 
 
<%--
 
       <sf:label path="pname">Product Name:</sf:label>${product.pname}
                                 <br />
       <br />
       <sf:label path="pbrand">Brand:</sf:label>${product.pbrand}
                                 <br />
       <br />
       <sf:label path="pprice">Age :</sf:label>${product.pprice}
                                 <br />
       <br />
       <!-- for triggering webflow events using form submission,
                                 the eventId to be triggered is given in "name" attribute as:
                                 -->
       <input name="_eventId_edit" type="submit" value="Prev" />
       <br />
       <input name="_eventId_submit" type="submit" value="Next" />
       <br />
</sf:form> --%>
<div>
       <%@ include file="Footer.jsp"%>
</div>



<%-- <%@include file="Header.jsp"%>

  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form:form class="form-horizontal" role="form">
        <fieldset>

          <!-- Form Name -->
          <legend>Address Details</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Address Line 1" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Address Line 2" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Country" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" name = "_eventId_submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form:form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->

								

<%@include file="Footer.jsp"%> --%>