<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>online shopping</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/product.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${shop}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
function checkCount(){
	var r = /^[0-9]*[1-9][0-9]*$/　　//positive integer
	var count = $("#count").val();
	if (!r.test(count)){
		$("#count").val(1);
	}
}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div class="container productContent">
	
		<%@ include file="left.jsp"%>

		<div class="span18 last">
			<div class="productImage">
				<a title="" style="outline-style: none; text-decoration: none;"
					id="zoom"
					rel="gallery">
					<div class="zoomPad">
						<img style="opacity: 1;" title="picture" class="medium" src="${ ctx }/${entity.img }" />
						<div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div>
						<div
							style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;"
							class="zoomWindow">
							<div style="width: 368px;" class="zoomWrapper">
								<div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div>
								<div style="width: 0%; height: 0px;" class="zoomWrapperImage">
									<img src="" style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;" />
								</div>
							</div>
						</div>
						<div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div>
					</div>
				</a>
			</div>
			<!-- INFORMATION -->
			<div class="name">${entity.title }</div>
			<div class="sn"><div>NO：${entity.id }</div></div>
			<div class="info">
				<dl>
					<dt>Price:</dt>
					<dd>
						<strong>SEK：${entity.priceShop}kr</strong>Recommend：<del>SEK${entity.priceMarket}kr</del>
					</dd>
				</dl>
				<dl>
					<dt>on sale:</dt>
					<dd><a target="_blank" title="SALE (2016-07-30 ~ 2017-01-01)">Time to buy</a></dd>					
				</dl>

			</div>
			<form id="cartForm" action="${ ctx }/joinCart.html" method="post">
				<input name="cart.pid" type="hidden" value="${entity.id }">
				<div class="action">
					<dl class="quantity">
						<dt>account:</dt>
						<dd><input type="text" id="count" name="cart.count" value="1" maxlength="4" onblur="checkCount();" /></dd>
						<dd>piece</dd>
					</dl>
					<div class="buy">
						<input type="submit" class="addCart" value="Add to Cart"/>
					</div>
				</div>
			</form>
			<div id="bar" class="bar">
				<ul>
					<li id="introductionTab"><a href="#introduction">information</a></li>
				</ul>
			</div>
			<div id="introduction" name="introduction" class="introduction">
				<div class="title"><strong>${entity.desc }</strong></div>
				<div><img src="${ctx }/${entity.img }" /></div>
			</div>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>
