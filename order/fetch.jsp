<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<div class="pageContent">
	<form method="post" action="${ctx }/order/update.html" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone)">
		<input type="hidden" name="order.id" value="${entity.id }">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>recipient：</label>
				<input type="text" name="order.name" size="30" minlength="1" maxlength="20" class="required" value="${entity.name }"/>
			</div>
			<div class="unit">
				<label>Tel：</label>
				<input type="text" name="order.phone" size="30" minlength="1" maxlength="20" class="required" value="${entity.phone }"/>
			</div>
			<div class="unit">
				<label>Address：</label>
				<textarea name="order.address" rows="8" cols="32" maxlength="200">${entity.address }</textarea>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">submit</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">delete</button></div></div></li>
			</ul>
		</div>
	</form>
</div>