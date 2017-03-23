<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<c:set var="com" value="${ctx }/adminUser"/>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${com }/list.html">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>user：<input type="text" name="user.username" value="${entity.username }"/></td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">submit</button></div></div></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="${com }/toAdd.html" target="dialog" width="550" height="400" mask="true"><span>add</span></a></li>
			<li><a class="delete" href="${com }/delete.html?user.id={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>delete</span></a></li>
			<li><a class="edit" href="${com }/toUpdate.html?user.id={sid_user}" target="dialog" width="550" height="400" mask="true"><span>change</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="5%" class="center">number</th>
				<th class="center">username</th>
				<th width="15%" class="center">Create time</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${pager.totalRecord == 0 }">
				<tr><td colspan="3" align="center">no record</td></tr>
			</c:if>
			<c:forEach items="${pager.datas}" var="d" varStatus="v">
				<tr target="sid_user" rel="${d.id }">
					<td class="center">${v.index + 1 }</td>
					<td class="center">${d.username }</td>
					<td class="center"><fmt:formatDate value="${d.createDate}" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 这是 分页部分 -->
	<%@ include file="../common/pager.jsp"%>
</div>