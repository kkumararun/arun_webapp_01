<style>
body {
	background: #eee !important;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	max-width: 480px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
	.
	form-signin-heading
	,
	.checkbox
	{
	margin-bottom
	:
	30px;
}

.checkbox {
	font-weight: normal;
}

.form-control {
	position: relative;
	font-size: 16px;
	height: auto;
	padding: 10px;
	@
	include
	box-sizing(border-box);
	&:
	focus
	{
	z-index
	:
	2;
}

}
input[type="text"] {
	margin-bottom: -1px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

input[type="password"] {
	margin-bottom: 20px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
}
</style>

<div>
	<%@ include file="Header.jsp"%>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>



	<%-- 	<div class="wrapper">
    <form:form class="form-signin" action="" command="">       
      <h2 class="form-signin-heading">Please login</h2>
      <form:input type="text" path="" class="form-control" placeholder="Email Address" />
      <form:input type="password" path="" class="form-control" name="password" placeholder="Password"/>      
      <label class="checkbox">
        <form:input type="checkbox" path="" value="remember-me" id="rememberMe" name="rememberMe"/> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form:form>
  </div> --%>


	<div class="wrapper">
		<form class="form-signin" action="login" method='POST'>
			<%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
			<h2 class="form-signin-heading">Please login</h2>
			<input type="text" class="form-control" name="email"
				placeholder="User Name" required="Please enter username"
				autofocus="" /> <input type="password" class="form-control"
				name="password" placeholder="Password"
				required="Please enter password" />
			<!--       <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
 -->
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>
	</div>



	<section>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		p>&nbsp;
		</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
	</section>

	<%@ include file="Footer.jsp"%>