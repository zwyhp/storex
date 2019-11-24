<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ctx}/client/css/main.css" type="text/css" />
<!-- 导入首页轮播图css和js脚本 -->
<link type="text/css" href="${ctx}/client/css/autoplay.css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/client/js/autoplay.js"></script>
<title>Insert title here</title>
</head>
<body class="main">
	<!-- 1.网上书城顶部 start -->
<div id="divhead">
	<table cellspacing="0" class="headtable">
		<tr>
			<td>
				<a href="${ctx}/index.action">
					<img src="${ctx}/client/images/logo.png" width="200" height="60" border="0" /> 
				</a>
			</td>
			<td style="text-align:right">
				<img src="${ctx}/client/images/cart.gif" width="26" height="23" style="margin-bottom:-4px" />&nbsp;<a href="#">购物车</a> 
				| <a href="#">帮助中心</a> 
				| <a href="#">我的帐户</a>
				| <a href="${ctx}/register.action">新用户注册</a>							
			 
			</td>		
		</tr>
	</table>
</div>
	<!-- 网上书城顶部  end -->
	<!--2. 网上书城菜单列表  start -->

<div id="divsearch">
<form action="#" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入书名"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${ctx }/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>
<!-- 网上书城菜单列表  end -->
<!-- 3.网上书城用户注册  start -->
	<div id="divcontent" align="center">
		<form action="${ctx  }/admin/login.action" method="post"  onsubmit="return checkForm();">
			<table width="850px" border="0" cellspacing="0">
				<tr>
					<font color="#FF0000">${msg}</font> 
				</tr>
				<tr>
					<td style="padding: 30px"><h1>会员登录</h1>
						<table width="70%" border="0" cellspacing="2" class="upline">
<!--							<tr>
								<td style="text-align: right; width: 20%">会员邮箱：</td>
								<td style="width: 40%">
								<input type="text" class="textinput"  id="email" name="email" onkeyup="checkEmail();"/>
								</td>
								<td colspan="2"><span id="emailMsg"></span><font color="#999999">请输入有效的邮箱地址</font></td>
							</tr>-->
							<tr>
								<td style="text-align: right">会员名：</td>
								<td><input type="text" class="textinput"  id="username" name="username" onkeyup="checkUsername();"/>
								</td>
								<td colspan="2"><span id="usernameMsg"></span><font color="#999999">字母数字下划线1到10位, 不能是数字开头</font></td>
							</tr>
							<tr>
								<td style="text-align: right">密码：</td>
								<td><input type="password" class="textinput"  id="password" name="userpwd" onkeyup="checkPassword();"/></td>
								
							</tr>
							
						</table>

						<table width="70%" border="0" cellspacing="0">
							<tr>
								<td style="padding-top: 20px; text-align: center">
									<input type="image" src="${ctx}/client/images/signup.gif" name="submit" border="0"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
    <!-- 网上书城用户注册  end -->
	<!--4. 网上书城下方显示 start -->
<div id="divfoot" align="center">
		<table width="100%" border="0" cellspacing="0" >
			<tr>
				<td rowspan="2" style="width:10%">
					<img src="${ctx  }/client/images/logo.png" width="195" height="50"
					style="margin-left:175px" />
				</td>
				<td style="padding-top:5px; padding-left:50px">
					<a href="#">
						<font color="#747556"><b>CONTACT US</b></font> 
					</a>
				</td>
			</tr>
			<tr>
				<td style="padding-left:50px">
					<font color="#CCCCCC">
						<b>COPYRIGHT 2015 &copy; BookStore All Rights RESERVED.</b> 
					</font>
				</td>
			</tr>
		</table>
		</div>
       <!--4. 网上书城下方显示 start -->
</body>
</html>