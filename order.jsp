<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Page</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div class="container cart">
		<div class="span24">
			<table>
				<tbody>
					<tr>
						<th>picture</th>
						<th>Commodity</th>
						<th>price</th>
						<th>Quantity</th>
						<th>Subtotal</th>
					</tr>
					<c:set var="total" value="0" />
					<c:forEach var="orderItem" items="${s_cart}">
						<tr>
							<td width="60"><img src="${ ctx }/${ orderItem.product.img}" /></td>
							<td>${orderItem.product.title}</td>
							<td>￥${orderItem.price} SEK</td>
							<td class="quantity" width="60">${orderItem.count}</td>
							<td width="140"><span class="subtotal">￥${orderItem.price * orderItem.count} 元</span></td>
						</tr>
						<c:set var="total" value="${orderItem.price * orderItem.count + total}" />
					</c:forEach>
				</tbody>
			</table>
			<dl id="giftItems" class="hidden" style="display: none;">
			</dl>
			<div class="total">
				<em id="promotion"></em> Commodity Price: <strong id="effectivePrice">￥${total } 元
				</strong>
			</div>
			<form id="orderForm" action="${ ctx }/submitOrder.html" method="post">
				<div class="span24">
					<p>
						Receiver&nbsp;&nbsp;&nbsp;：
						<input name="order.name" type="text" value="${s_user.name }" style="width: 150px" required="required"/> <br /> 
						Contact information：
						<input name="order.phone" type="text" value="${s_user.phone }" style="width: 150px" required="required"/> <br /> 
						Shipping address：
						<input name="order.address" type="text" value="${s_user.address }" style="width: 550px" required="required"/> 
					</p>
					<hr />
					<p>
						Choose banks：<br /> 
						<input type="radio" name="order.type" value="ICBC-NET-B2C" checked="checked" />
						ICBC<img src="${ shop }/bank_img/icbc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="order.type" value="BOC-NET-B2C" />
						CHINA BANK<img src="${ shop }/bank_img/bc.bmp" align="middle" />
					</p>
					<hr />
					<p style="text-align: right">
						<a href="javascript:document.getElementById('orderForm').submit();">
							<img src="${shop}/images/finalbutton.gif" width="204" height="51" border="0" />
						</a>
					</p>
				</div>
			</form>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>