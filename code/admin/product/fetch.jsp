<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<div class="pageContent">
	<form method="post" action="${ctx }/product/update.html" class="pageForm required-validate" enctype="multipart/form-data" onsubmit="return iframeCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
			<input type="hidden" name="product.id" value="${entity.id }">
			<div class="unit">
				<label>title：</label>
				<input type="text" name="product.title" size="30" maxlength="20" class="required" />
			</div>
			<div class="unit">
				<label>market price：</label>
				<input type="text" name="product.priceMarket" size="30" maxlength="20" class="required number" />
			</div>
			<div class="unit">
				<label>selling price：</label>
				<input type="text" name="product.priceShop" size="30" maxlength="20" class="required number" />
			</div>
			<div class="unit">
				<label>Categories：</label>
				<select class="combox" name="product.categorySecond.id" id="fl">
					<c:forEach items="${s_cs}" var="d">
						<option value="${d.id }">${d.name }</option>
					</c:forEach>
				</select>
			</div>
			<div class="unit">
				<label>Whether it is hot：</label>
				<input type="radio" name="product.hot" value="true"/>sell like hot cakes
				<input type="radio" name="product.hot" value="false"/>ordinary
			</div>
			<div class="unit">
				<label>picture</label>
				<input name="image" type="file" />
			</div>
			<div class="unit">
				<label>description：</label>
				<textarea class="editor" name="product.desc" rows="10" cols="50" tools="Cut,Copy,About" maxlength="200">${entity.desc }</textarea>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">submit</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">close</button></div></div></li>
			</ul>
		</div>
	</form>
</div>
<script type="text/javascript">
$(function(){
	
	$(":radio[name='product.hot'][value='${entity.hot}']").attr("checked","checked");
	
	var cid = '${entity.categorySecond.id}';
	if (cid != ""){
		$('#fl').val(cid);
	}
});
</script>