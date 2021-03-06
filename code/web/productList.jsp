<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>online shopping</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/product.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${shop}/js/jquery-1.8.3.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div class="container productList">
		<%@ include file="left.jsp"%>
		
		<div class="span18 last">
			<div id="result" class="result table clearfix">
				<ul>
					<c:if test="${pager == null || pager.totalRecord == 0 }">
						<span style="text-align: center;font-size: 50px;">ONLINE SHOPPING </span>
					</c:if>
					<c:forEach var="p" items="${pager.datas}">
						<li><a href="${ctx }/findByPid.html?product.id=${p.id}">
								<img src="${ctx}/${p.img}" width="170" height="170" style="display: inline-block;" /> 
								<br><br>
								<span class="price"> Price：${p.priceShop}&nbsp; SEK</span>
						</a></li>
					</c:forEach>
				</ul>
			</div>
			
			<c:set var="pager_url" value="${ctx}/${url_type}.html?product.id=${product.id }"></c:set>
			<%@ include file="pager.jsp"%>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>