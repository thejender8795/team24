<%@ page contentType="text/html;charset=UTF-8" %>
<script src="${dwz}/js/jquery.validate.js" type="text/javascript"></script>
<script src="${dwz}/js/dwz.validate.method.js" type="text/javascript"></script>
<script src="${dwz}/js/dwz.regional.zh.js" type="text/javascript"></script>
<div class="pageContent">
	<form method="post" action="updatePsw.html" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone)">
		<input type="hidden" name="user.id" value="${admin.id }" />
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>old password：</label>
				<input type="password" name="user.username" size="30" minlength="1" maxlength="20" class="required" />
			</div>
			<div class="unit">
				<label>new password：</label>
				<input type="password" id="cp_newPassword" name="newPassword" size="30" minlength="1" maxlength="20" class="required alphanumeric"/>
			</div>
			<div class="unit">
				<label>repeat password：</label>
				<input type="password" name="user.password" size="30" equalTo="#cp_newPassword" class="required alphanumeric"/>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">sumbit</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">cancel</button></div></div></li>
			</ul>
		</div>
	</form>
</div>