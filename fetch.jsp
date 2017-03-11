<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<div class="pageContent">
	<form method="post" action="${ctx }/about/update.html" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone)">
		<input type="hidden" name="about.id" value="${entity.id }">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>NAME：</label>${entity.name }
			</div>
			<div class="unit">
				<label>Context：</label>
				<textarea name="about.content" rows="20" cols="40" maxlength="2000">${entity.content }</textarea>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">submit</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">cancel</button></div></div></li>
			</ul>
		</div>
	</form>
</div>