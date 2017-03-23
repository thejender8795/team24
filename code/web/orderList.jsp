<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Booking page</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/cart.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/product.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${shop}/js/jquery-1.8.3.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="container cart">
		<div class="span24">
			<div>
				<ul>
					<li class="current"></li>
					<li><b>My page</b></li>
				</ul>
			</div>
			<table>
				<tbody>
					<c:if test="${fn:length(pager.datas) == 0}">
						<tr>
							<th colspan="5">no page</th>
						</tr>
					</c:if>
					<c:forEach var="d" items="${pager.datas}" varStatus="vvv">
						<tr>
							<th colspan="5">
								【${vvv.index + 1 }】&nbsp;&nbsp;Receiver：${d.name}&nbsp;&nbsp;&nbsp;&nbsp;
								Tel：${d.phone}&nbsp;&nbsp;&nbsp;&nbsp;
								Address：${d.address}
								<br>
								Booking no: ${d.num}&nbsp;&nbsp;&nbsp;&nbsp;
								Booking price：SEK<font color="red">${d.price }</font>kr &nbsp;&nbsp;&nbsp;&nbsp;
								How to pay：<c:if test="${d.type eq 'ICBC-NET-B2C'}">ICBC</c:if>
										<c:if test="${d.type eq 'BOC-NET-B2C'}">CHINA BANK</c:if> &nbsp;&nbsp;&nbsp;&nbsp;
								Booking Time：<fmt:formatDate value="${d.createDate}" pattern="yyyy/MM/dd  HH:mm:ss"/>
							</th>
						</tr>
						<tr>
							<th>picture</th>
							<th>Commodity</th>
							<th>Price</th>
							<th>Amount</th>
							<th>Subtotal</th>
						</tr>
						<c:forEach var="item" items="${d.items}">
							<tr>
								<td width="60">
									<a href="${ctx }/findByPid.html?product.id=${item.pid}"><img src="${ctx}/${item.img}" /></a>
								</td>
								<td>${item.title}</td>
								<td>SEK ${item.price} kr</td>
								<td class="quantity" width="60">${item.count}</td>
								<td width="140"><span class="subtotal">SEK ${item.price * item.count} kr</span></td>
							</tr>
						</c:forEach>
					</c:forEach>
					<tr>
						<th colspan="5">
							<c:if test="${fn:length(pager.datas) != 0}">
								<c:set var="pager_url" value="${ctx}/orderList.html"></c:set>
								<%@ include file="pager.jsp"%>
							</c:if>
						</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>