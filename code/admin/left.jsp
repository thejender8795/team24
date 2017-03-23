<%@ page contentType="text/html;charset=UTF-8" %>
<div id="leftside">
	<div id="sidebar_s">
		<div class="collapse">
			<div class="toggleCollapse"><div></div></div>
		</div>
	</div>
	<div id="sidebar">
		<div class="toggleCollapse"><h2>Main menu</h2><div>shrink</div></div>

		<div class="accordion" fillSpace="sidebar">
			<div class="accordionContent">
				<ul class="tree treeFolder">
					<li><a>Personal management</a>
						<ul>
							<li><a href="${ctx }/admin/info.html" target="navTab" rel="main">Personal information</a></li>
							<li><a href="${ctx }/admin/toPsw.html" target="dialog" width="520" height="180" mask="true">Change passpord</a></li>
						</ul>
					</li>
					<li><a>Classified management</a>
						<ul>
							<li><a href="${ctx }/category/list.html" target="navTab" rel="main">Category list</a></li>
						</ul>
					</li>
					<li><a>Commodity management</a>
						<ul>
							<li><a href="${ctx }/product/toList.html" target="navTab" rel="main">List of commodities</a></li>
						</ul>
					</li>
					<li><a>Order management</a>
						<ul>
							<li><a href="${ctx }/order/list.html" target="navTab" rel="main">Order list</a></li>
						</ul>
					</li>
					<li><a>User management</a>
						<ul>
							<li><a href="${ctx }/adminUser/list.html" target="navTab" rel="main">User list</a></li>
						</ul>
					</li>
					<li><a>About us</a>
						<ul>
							<li><a href="${ctx }/about/list.html" target="navTab" rel="main">About us</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
