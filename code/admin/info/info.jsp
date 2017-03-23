<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<h2 class="contentTitle">Personal information</h2>
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl class="nowrap">
			<dt>account number：</dt>
			<dd>
				<input type="text" value="${admin.username }" readonly="readonly"/>
			</dd>
		</dl>
		<dl class="nowrap">
			<dt>level：</dt>
			<dd>
				<input type="text" value="System administrator" readonly="readonly"/>
			</dd>
		</dl>
	</div>
</div>