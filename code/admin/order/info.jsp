<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../common/tag.jsp"%>
<div class="pageContent">
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="5%" class="center">no</th>
				<th width="10%" class="center">picture</th>
				<th class="center">name</th>
				<th width="15%" class="center">price</th>
				<th width="10%" class="center">Quantity</th>
				<th width="15%" class="center">Total price</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="count_" value="0" />
			<c:forEach items="${entity.items}" var="d" varStatus="v">
				<tr target="sid_user" rel="${d.id }">
					<td class="center">${v.index + 1 }</td>
					<td class="center imgs"><img alt="" src="${ctx }/${d.img }" width="50px;" height="50px;"> </td>
					<td class="center">${d.title }</td>
					<td class="center">SEK${d.price } kr</td>
					<td class="center">${d.count }</td>
					<td class="center">SEK<fmt:formatNumber value="${d.price * d.count } " pattern="0.00" maxFractionDigits="2"/>kr/td>
					<c:set var="count_" value="${count_ + d.price * d.count }" />
				</tr>
			</c:forEach>
			<tr>
				<td class="right" colspan="5">Total price：</td>
				<td class="center">SEK<fmt:formatNumber value="${count_ }" pattern="0.00" maxFractionDigits="2"/>kr</td>
			</tr>
		</tbody>
	</table>
</div>
<style type="text/css" media="screen">
    .imgs{text-align:center;}
    .imgs div{height:50px!important;}
</style>