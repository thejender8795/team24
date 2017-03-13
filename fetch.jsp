<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<div class="pageContent">
	<form method="post" action="${ctx }/category/update.html" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone)">
		<input type="hidden" name="category.id" value="${entity.id }">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>NAME：</label>
				<input type="text" name="category.name" size="30" minlength="1" maxlength="20" class="required" value="${entity.name }"/>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">Check out</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">Delete</button></div></div></li>
			</ul>
		</div>
	</form>
</div>