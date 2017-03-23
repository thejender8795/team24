<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>USER REGISTERED</title>
<link href="${shop}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${shop}/css/register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${shop}/js/jquery-1.8.3.js"></script>
<style>
.error{color:red}
</style>
<script>
function checkForm() {
	
	var password = $("#password").val();
	
	var repassword = $("#repassword").val();
	if (password != repassword) {
		$("#msg").text("Two password entries are inconsistent!");
		return false;
	}
}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					<div class="title">
						<strong>USER REGISTER</strong>
					</div>
					<form action="${ ctx }/register.html" method="post" onsubmit="return checkForm();">
						<table>
							<tbody>
								<tr>
									<th><span class="requiredField">*</span>User:</th>
									<td><input type="text" class="text" name="user.username" id="username" maxlength="20" required="required" value="${entity.username }"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>password:</th>
									<td><input type="password" class="text" name="user.password" id="password" maxlength="20" required="required"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>comfirm password:</th>
									<td><input type="password" class="text" id="repassword" maxlength="20" required="required"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>Receiver:</th>
									<td><input type="text" class="text" name="user.name" maxlength="20" required="required" value="${entity.name }"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>Tel:</th>
									<td><input type="text" class="text" name="user.phone" maxlength="20" required="required" value="${entity.phone }"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>Address:</th>
									<td><textarea rows="5" cols="40" maxlength="200" name="user.address">${entity.address }</textarea></td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit" value="Agree to the following agreement and registration" />&nbsp;<label style="color: red;" id="msg">${msg }</label></td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td>Registration Agreement</td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td>
										<div id="agreement" class="agreement" style="height: 200px;">
											<p>1.Conditions of Use:Welcome to our online store and its associates provide their services to you subject to the following conditions. If you visit or shop within this website, you accept these conditions. Please read them carefully.</p>
											<p>2.PRIVACY:Please review our Privacy Notice, which also governs your visit to our website, to understand our practices.
											</p>
											<p>3.ELECTRONIC COMMUNICATIONS: When you visit our site or send e-mails to us, you are communicating with us electronically. You consent to receive communications from us electronically. We will communicate with you by e-mail or by posting notices on this site. You agree that all agreements, notices, disclosures and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.</p>
											</p>
											<p>4.COPYRIGHT: All content included on this site, such as text, graphics, logos, button icons, images, audio clips, digital downloads, data compilations, and software, is the property of our site or its content suppliers and protected by international copyright laws. The compilation of all content on this site is the exclusive property of our site, with copyright authorship for this collection by our site, and protected by international copyright laws.
											</p>
											<p>5.TRADE MARKS: Our application’s, trademarks and trade dress may not be used in connection with any product or service that is not our site, in any manner that is likely to cause confusion among customers, or in any manner that disparages or discredits MYCOMPANY. All other trademarks not owned by our site or its subsidiaries that appear on this site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by our site or its subsidiaries.
											</p>
											<p>6.LICENSE AND SITE ACCESS:  our site grants you a limited license to access and make personal use of this site and not to download (other than page caching) or modify it, or any portion of it, except with express written consent of MYCOMPANY. This license does not include any resale or commercial use of this site or its contents: any collection and use of any product listings, descriptions, or prices: any derivative use of this site or its contents: any downloading or copying of account information for the benefit of another merchant: or any use of data mining, robots, or similar data gathering and extraction tools. This site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without express written consent of us. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of  our associates without express written consent. You may not use any meta tags or any other "hidden text" utilizing our name or trademarks without the express written consent of MYCOMPANY. Any unauthorized use terminates the permission or license granted by MYCOMPANY. You are granted a limited, revocable, and nonexclusive right to create a hyperlink to the homepage of us so long as the link does not portray it, its associates, or their products or services in a false, misleading, derogatory, or otherwise offensive matter. You may not use any our logo or other proprietary graphic or trademark as part of the link without express written permission.</p>
											<p>7.YOUR MEMBERSHIP ACCOUNT: If you use this site, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and you agree to accept responsibility for all activities that occur under your account or password. If you are under 18, you may use our website only with involvement of a parent or guardian.  Our site and its associates reserve the right to refuse service, terminate accounts, remove or edit content, or cancel orders in their sole discretion.
											</p>
											<p>8.RISK OF LOSS: All items purchased from MYCOMPANY are made pursuant to a shipment contract. This basically means that the risk of loss and title for such items pass to you upon our delivery to the carrier.
											</p>
											<p>9.DISPUTES: Any dispute relating in any way to your visit to us or to products you purchase through us shall be submitted to confidential arbitration in DEFINE_STATE, DEFINE_COUNTRY, except that, to the extent you have in any manner violated or threatened to violate our intellectual property rights, MYCOMPANY may seek injunctive or other appropriate relief in any state or federal court in the state of DEFINE_STATE, DEFINE_COUNTRY, and you consent to exclusive jurisdiction and venue in such courts. Arbitration under this agreement shall be conducted under the rules then prevailing of the American Arbitration Association. The arbitrators award shall be binding and may be entered as a judgment in any court of competent jurisdiction. To the fullest extent permitted by applicable law, no arbitration</p>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="login">
							<div class="ad">
								<dl>
									<dt>Register to enjoy</dt>
									<dd>Genuine protection, formal invoice</dd>
									<dd>Free returned, after-sales door</dd>
								</dl>
							</div>
							<dl>
								<dt>Do you have an account?？</dt>
								<dd>
									 <a href="${ctx}/toLogin.html">login</a>
								</dd>
							</dl>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
