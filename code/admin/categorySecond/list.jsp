<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<c:set var="com" value="${ctx }/categorySecond"/>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="${com }/toAdd.html" target="dialog" width="520" height="160" mask="true"><span>ADD</span></a></li>
			<li><a class="delete" href="${com }/delete.html?categorySecond.id={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>delete</span></a></li>
			<li><a class="edit" href="${com }/toUpdate.html?categorySecond.id={sid_user}" target="dialog" width="520" height="160" mask="true"><span>CHANGE</span></a></li>
			<li class="line">line</li>
			<li class="line">line</li>
			<li class="line">line</li>
			<li><a class="icon" href="${ctx }/category/list.html" target="navTab" rel="main"><span>First Tier Category</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="5%" class="center">no record</th>
				<th class="center">First Tier Category</th>
				<th class="center">Secondary classification</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${entitys == null || fn:length(entitys) == 0}">
				<tr><td colspan="3" align="center"></td></tr>
			</c:if>
			<c:forEach items="${entitys}" var="d" varStatus="v">
				<tr target="sid_user" rel="${d.id }">
					<td class="center">${v.index + 1 }</td>
					<td class="center">${d.category.name }</td>
					<td class="center">${d.name }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>