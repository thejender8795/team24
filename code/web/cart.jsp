<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>SHOPPING CART</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div class="container cart">
		<c:if test="${fn:length(s_cart) != 0}">
			<div class="span24">
				<table>
					<tbody>
						<tr>
							<th>picture</th>
							<th>commodity</th>
							<th>price</th>
							<th>Quantity</th>
							<th>subtotal</th>
							<th>operating</th>
						</tr>
						<c:set var="total" value="0" />
						<c:forEach var="cartItem" items="${s_cart}">
							<tr>
								<td width="60">
									<a href="${ctx }/findByPid.html?product.id=${cartItem.pid }">
										<img src="${ctx}/${cartItem.product.img}" />
									</a>
								</td>
								<td>
									<a href="${ctx }/findByPid.html?product.id=${cartItem.pid }">${cartItem.product.title}</a>
								</td>
								<td>SEK${cartItem.price} kr</td>
								<td class="quantity" width="60">${cartItem.count}</td>
								<td width="140"><span class="subtotal">Total price：SEK${cartItem.count * cartItem.price} kr</span></td>
								<td><a href="${ctx}/removeCart.html?product.id=${cartItem.pid }" class="delete">Delete</a></td>
							</tr>
							<c:set var="total" value="${cartItem.count * cartItem.price + total}" />
						</c:forEach>
					</tbody>
				</table>
				
				<div class="total">
					Price: <strong id="effectivePrice">SEK${total } Kr</strong>
				</div>
				<div class="bottom">
					<a href="${ctx }/clearCart.html" id="clear" class="clear">Delete shopping cart</a>
					<a href="${ctx}/viewOrder.html" id="submit" class="submit">check out</a>
				</div>
			</div>
		</c:if>
		
		<c:if test="${fn:length(s_cart) == 0}">
			<div class="span24">
				<div class="step step1">
					<center style="color: red">
						<span><h2><a href="${ctx }/index.html"><br>PLEASE GO SHOPPING!</a></h2></span>
					</center>
				</div>
			</div>
		</c:if>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>