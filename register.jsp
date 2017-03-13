<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>USER REGISTERED</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${shop}/js/jquery-1.8.3.js"></script>
<style>
.error{color:red}
</style>
<script>
function checkForm() {
	
	var password = $("#password").val();
	
	var repassword = $("#repassword").val();
	if (password != repassword) {
		$("#msg").text("两次密码输入不一致!");
		return false;
	}
}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					<div class="title">
						<strong>USER REGISTER</strong>
					</div>
					<form action="${ ctx }/register.html" method="post" onsubmit="return checkForm();">
						<table>
							<tbody>
								<tr>
									<th><span class="requiredField">*</span>User:</th>
									<td><input type="text" class="text" name="user.username" id="username" maxlength="20" required="required" value="${entity.username }"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>password:</th>
									<td><input type="password" class="text" name="user.password" id="password" maxlength="20" required="required"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>comfirm password:</th>
									<td><input type="password" class="text" id="repassword" maxlength="20" required="required"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>Receiver:</th>
									<td><input type="text" class="text" name="user.name" maxlength="20" required="required" value="${entity.name }"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>Tel:</th>
									<td><input type="text" class="text" name="user.phone" maxlength="20" required="required" value="${entity.phone }"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>Address:</th>
									<td><textarea rows="5" cols="40" maxlength="200" name="user.address">${entity.address }</textarea></td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit" value="Agree to the following agreement and registration" />&nbsp;<label style="color: red;" id="msg">${msg }</label></td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td>Registration Agreement</td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td>
										<div id="agreement" class="agreement" style="height: 200px;">
											<p>1.</p>
											<p>2.</p>
											<p>3.</p>
											</p>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="login">
							<div class="ad">
								<dl>
									<dt>Register to enjoy</dt>
									<dd>Genuine protection, formal invoice</dd>
									<dd>Free returned, after-sales door</dd>
								</dl>
							</div>
							<dl>
								<dt>Do you have an account?？</dt>
								<dd>
									 <a href="${ctx}/toLogin.html">login</a>
								</dd>
							</dl>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
