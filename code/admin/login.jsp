<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>management </title>
<link href="${dwz }/themes/css/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="login">
		<div id="login_header">
			<h1 class="login_logo">
				<a href="#"><img src="${dwz }/themes/default/images/login_logo.jpg" /></a>
			</h1>
			<div class="login_headerContent">
				<div class="navList">
					<ul>
						<li><a href="#">Setup as front page</a></li>
						<li><a href="#">feedback</a></li>
						<li><a href="#">help</a></li>
					</ul>
				</div>
				<h2 class="login_title"></h2>
			</div>
		</div>
		<div id="login_content">
			<div class="loginForm">
				<form action="login.html" method="post">
					<p>
						<label>user：</label>
						<input type="text" name="user.username" size="20" class="login_input" value="admin" maxlength="20" required="required"/>
					</p>
					<p>
						<label>password：</label>
						<input type="password" name="user.password" size="20" class="login_input" value="admin" maxlength="20" required="required"/>
					</p>
					<p>
						<span style="color: red;">${msg }</span>
					</p>
					<div class="login_bar">
						<input class="sub" type="submit" value=" "/>
					</div>
				</form>
			</div>
			<div class="login_banner"><img src="${dwz }/themes/default/images/login_banner.jpg" /></div>
			<div class="login_main">
				<ul class="helpList">
					<li><a href="#">Load the driver</a></li>
					<li><a href="#">How to install the key driver？</a></li>
					<li><a href="#">Forget the password how to do？</a></li>
					<li><a href="#">Why the login failed？</a></li>
				</ul>
				<div class="login_inner">
					<p>you can use xxxxxxx.</p>
					<p>you can use xxxxxxx.</p>
				</div>
			</div>
		</div>
		<div id="login_footer">
			Copyright &copy; 2010-2016 Powered by kaola (939313737). All Rights Reserved.
		</div>
	</div>
</body>
</html>