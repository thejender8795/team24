<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${shop}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
  $(function(){
	  $("#username").focus(function(){
		  $("#username").val("");
	  });
  })
</script>
<title>UESR LOGIN</title>

<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container login">
		<div class="span12">
			<div class="ad">
				
			</div>
		</div>
		
		<div class="span12 last">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>USER LOGIN</strong>
					</div>
					<form action="${ shop }/login.html" method="post">
						<table>
							<tbody>
								<tr>
									<th><span class="requiredField">*</span>User name:</th>
									<td>
										<input type="text" class="text" name="user.username" id="username" maxlength="20" required="required" value="${entity.username }">
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>password:</th>
									<td>
										<input type="password" class="text" name="user.password" id="password" maxlength="20" required="required">
									</td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit" value="log in"/>&nbsp;<label style="color: red;">${msg }</label></td>
								</tr>
								<tr class="register">
									<th>&nbsp;</th>
									<td>
										<dl>
											<dt>If you not have an account</dt>
											<dd>
												Please Register！ <a href="${ctx }/toRegister.html">Register</a>
											</dd>
										</dl>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
		
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>