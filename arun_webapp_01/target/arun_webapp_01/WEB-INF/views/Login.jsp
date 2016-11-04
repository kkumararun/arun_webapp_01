<script>
function validateForm() {
    var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address\neg: arun@niit.com");
        return false;
    }
    var y = document.forms["myForm"]["password"].value;

    	if (y == null || y == "") {
            alert("Password Can't be blank");
            return false;
        }
    	    	
}
</script>

<%@include file="Header.jsp" %>
<link rel="stylesheet"	href="<c:url value="${css}/login.css"/>">
<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
                <form action="login" method='POST' name="myForm" onsubmit="return validateForm();")>
                    <input name="email" type="text" placeholder="user password">
                    <input type="password" placeholder="password" name="password">
                    <button class="btn btn-info btn-block login" type="submit">Login</button>
                </form>
            </div>
        </div>
        
</div>

<%@include file="Footer.jsp" %>