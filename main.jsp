<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="common/tag.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<s:if test="null == #session.admin"><meta http-equiv="refresh" content="0; url=${ctx}/admin/login.jsp"></s:if>
<s:else>
<head>
<title>background management page</title>

<link href="${dwz }/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${dwz }/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<!--[if IE]>
<link href="${dwz }/themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lt IE 9]><script src="${dwz }/js/speedup.js" type="text/javascript"></script><script src="${dwz }/js/jquery-1.11.3.min.js" type="text/javascript"></script><![endif]-->
<!--[if gte IE 9]><!--><script src="${dwz }/js/jquery-2.1.4.min.js" type="text/javascript"></script><!--<![endif]-->

<script src="${dwz }/js/jquery.cookie.js" type="text/javascript"></script>
<script src="${dwz }/js/jquery.validate.js" type="text/javascript"></script>
<script src="${dwz }/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="${dwz }/xheditor/xheditor-1.2.2.min.js" type="text/javascript"></script>
<script src="${dwz }/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="${dwz }/uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>


<script src="${dwz }/bin/dwz.min.js" type="text/javascript"></script>

<script src="${dwz }/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("${dwz }/dwz.frag.xml", {
		loginUrl:"login.html",	// jump to the login page
		statusCode:{ok:200, error:300, timeout:301}, //optional
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //optional
		keys: {statusCode:"statusCode", message:"message"}, // optional
		ui:{hideMode:'offsets'}, //optional
hideMode:navTabThe way the components are switched，The supported values ​​are available’display’，’offsets’The value of the negative offset position，The default value is’display’
		debug:false,	// Debug mode 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"${dwz }/themes"}); // themeBase Relative to the index page of the subject base path
		}
	});
});
</script>
</head>

<body>
	<div id="layout">
		
		<%@ include file="header.jsp"%>
		
		<%@ include file="left.jsp"%>
		
		<%@ include file="right.jsp"%>
	</div>
		
		<%@ include file="footer.jsp"%>
</body>
</s:else>
</html>
