
<%@include file="Header.jsp" %>
<link rel="stylesheet"	href="<c:url value="${css}/login.css"/>">
<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
                <form action="login" method='POST'>
                    <input name="email" type="text" placeholder="user password">
                    <input type="password" placeholder="password" name="password">
                    <button class="btn btn-info btn-block login" type="submit">Login</button>
                </form>
            </div>
        </div>
        
</div>

<%@include file="Footer.jsp" %>