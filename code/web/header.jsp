<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="tag.jsp"%>
<div class="container header">
		<div class="span5">
			<div class="logo">
				<a><img src="${shop}/image/r___________renleipic_01/logo.jpg" alt="网上商城" /> </a>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				</div>
		</div>
	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>
				<c:if test="${s_user == null }">
					<li id="headerLogin" class="headerLogin" style="display: list-item;">
						<a href="${ ctx }/toLogin.html">Login</a>|
					</li>
					<li id="headerRegister" class="headerRegister" style="display: list-item;">
						<a href="${ ctx }/toRegister.html">Register</a>|
					</li>
				</c:if>
				<c:if test="${s_user != null}">
					<li id="headerLogin" class="headerLogin" style="display: list-item;">
						Welcome：<c:out value="${s_user.username }"/> |
					</li>
					<li id="headerLogin" class="headerLogin" style="display: list-item;">
						<a href="${ ctx }/orderList.html">My order</a> |
					</li>
					<li id="headerRegister" class="headerRegister" style="display: list-item;">
						<a href="${ ctx }/logout.html">Logout</a>|
					</li>
				</c:if>
				<li><a href="${ctx }/about.html?id=10">Shopping Guide</a> |</li>
				<li><a href="${ctx }/about.html?id=1">About us</a> |</li>
				<li><a target="_blank" href="${ctx }/admin/index.html"><span style="color: red;">Backstage</span></a></li>
			</ul>
		</div>
		<div class="cart">
			<a href="${ctx}/toCart.html">shopping car(${fn:length(s_cart)})</a>
		</div>
		<div class="phone">
			Tel: <strong>072-56566432</strong>
		</div>
	</div>
	<div class="span24">
		<ul class="mainNav">
			<li><a href="${ ctx }/index.html">Homepage</a>|</li>
			<s:action name="menu" namespace="/index" executeResult="true"></s:action>
			<c:forEach items="${s_category}" var="c">
			<li><a href="${ ctx }/findByCid.html?product.id=${c.id}">${c.name}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>