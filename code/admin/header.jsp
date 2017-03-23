<%@ page contentType="text/html;charset=UTF-8" %>
<div id="header">
	<div class="headerNav">
		<a class="logo">logo</a>
		<ul class="nav">
			<li style="color: white;">Welcome：${admin.username }</li>
			<li><a href="${ctx }/admin/index.html">my page</a></li>
			<li><a href="${ctx }/admin/toPsw.html" target="dialog" width="520" height="180" mask="true">Change password</a></li>
			<li><a href="${ctx }/admin/logout.html">log out</a></li>
		</ul>
		<ul class="themeList" id="themeList">
			<li theme="default"><div class="selected">blue</div></li>
			<li theme="green"><div>green</div></li>
			<li theme="purple"><div>purple</div></li>
			<li theme="silver"><div>silver</div></li>
			<li theme="azure"><div>azure</div></li>
		</ul>
	</div>
	<!-- navMenu -->
</div>