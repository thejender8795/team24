<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<c:set var="com" value="${ctx }/about"/>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="edit" href="${com }/toUpdate.html?about.id={sid_user}" target="dialog" width="460" height="460" mask="true"><span>修改</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="5%" class="center">no</th>
				<th width="10%" class="center">name</th>
				<th class="center">contect</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${entitys == null || fn:length(entitys) == 0}">
				<tr><td colspan="3" align="center">No records</td></tr>
			</c:if>
			<c:forEach items="${entitys}" var="d" varStatus="v">
				<tr target="sid_user" rel="${d.id }">
					<td class="center">${d.key }</td>
					<td class="center">${d.name }</td>
					<td class="center">${d.content }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>