<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<c:set var="com" value="${ctx }/order"/>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${com }/list.html">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>name：<input type="text" name="order.name" value="${entity.name }"/></td>
				<td>tel：<input type="text" name="order.phone" value="${entity.phone }"/></td>
				<td>address：<input type="text" name="order.address" value="${entity.address }"/></td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">retrieval</button></div></div></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="edit" href="${com }/toUpdate.html?order.id={sid_user}" target="dialog" width="550" height="300" mask="true"><span>change</span></a></li>
			<li><a class="add" href="${com }/toInfo.html?order.id={sid_user}" target="dialog" width="600" height="400" mask="true"><span>View details</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="5%" class="center">Serial number</th>
				<th width="10%" class="center">order number</th>
				<th width="8%" class="center">name</th>
				<th width="8%" class="center">Tel</th>
				<th class="center">address</th>
				<th width="8%" class="center">order amount</th>
				<th width="8%" class="center">Payment type</th>
				<th width="15%" class="center">Create time</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${pager.totalRecord == 0 }">
				<tr><td colspan="8" align="center">No records</td></tr>
			</c:if>
			<c:forEach items="${pager.datas}" var="d" varStatus="v">
				<tr target="sid_user" rel="${d.id }">
					<td class="center">${v.index + 1 }</td>
					<td class="center">${d.num }</td>
					<td class="center">${d.name }</td>
					<td class="center">${d.phone }</td>
					<td class="center">${d.address }</td>
					<td class="center">SEK${d.price }kr</td>
					<td class="center">
						<c:if test="${d.type eq 'ICBC-NET-B2C'}">ICBC</c:if>
						<c:if test="${d.type eq 'BOC-NET-B2C'}">China bank</c:if>
					</td>
					<td class="center"><fmt:formatDate value="${d.createDate}" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<%@ include file="../common/pager.jsp"%>
</div>