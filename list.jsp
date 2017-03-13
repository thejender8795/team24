<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<c:set var="com" value="${ctx }/category"/>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="${com }/toAdd.html" target="dialog" width="520" height="160" mask="true"><span>ADD</span></a></li>
			<li><a class="delete" href="${com }/delete.html?category.id={sid_user}" target="ajaxTodo" title="Would you like to delete it?"><span>delete</span></a></li>
			<li><a class="edit" href="${com }/toUpdate.html?category.id={sid_user}" target="dialog" width="520" height="160" mask="true"><span>change</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="5%" class="center">Number</th>
				<th class="center">Class name</th>
				<th width="10%" class="center">Secondary classification</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${entitys == null || fn:length(entitys) == 0}">
				<tr><td colspan="3" align="center">no record</td></tr>
			</c:if>
			<c:forEach items="${entitys}" var="d" varStatus="v">
				<tr target="sid_user" rel="${d.id }">
					<td class="center">${v.index + 1 }</td>
					<td class="center">${d.name }</td>
					<td class="center"><a style="text-decoration:underline" href="${ctx }/categorySecond/list.html?category.id=${d.id }" target="navTab" rel="main">Secondary classification</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>