<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet" href="${ctx }/client/css/main.css" type="text/css" />
</head>
<body class="main">
	<%@include file="./head.jsp" %>
	<%@include file="./menu_search.jsp" %>
	
	<div id="divpagecontent">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td width="25%">
					<table width="100%" border="0" cellspacing="0"
						style="margin-top:30px">
						<tr>
							<td class="listtitle">我的帐户</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="${ctx }/client/images/icon1.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${ctx }/modifyuserinfo.action">用户信息修改</a>
							</td>
						</tr>
						
						<tr>
							<td class="listtd">
								<img src="${ctx }/client/images/icon3.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${ctx}/logout.action">用戶退出</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<div style="text-align:right; margin:5px 10px 5px 0px">
						<a href="${ctx }/index.action">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
						<a href="${ctx }/myAccount.action">&nbsp;我的帐户</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;用户信息修改
					</div>
					
					<form action="${ctx}/admin/updateuser.action" method="post" >
					
					<table cellspacing="0" class="infocontent">
						<tr>
							<td>${msg}
								<table width="100%" border="0" cellspacing="2" class="upline">
									<tr>
										<td style="text-align:right; width:20%">会员邮箱：</td>
										<td style="width:40%; padding-left:20px"> ${sessionScope.user.email}</td>
										
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">会员名：</td>
										<td style="padding-left:20px">${sessionScope.user.username} </td>
										
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">修改密码：</td>
										<td><input type="password" class="textinput" name="userpwd"  /></td>
										<td><font color="#999999">密码设置至少6位，请区分大小写</font></td>
									</tr>
									<tr>
										<td style="text-align:right">重复密码：</td>
										<td><input type="password" class="textinput" /></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">性别：</td>
										<td colspan="2">&nbsp;&nbsp;
											<input type="radio" name="sex" value="男"  /> 男
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="sex" value="女"   /> 女
										</td>
									</tr>
									<tr>
										<td style="text-align:right">年龄：</td>
										<td colspan="2">
											<input name="age" type="text"  class="textinput" value="${sessionScope.user.age}"/>
										</td>
									</tr>
									<tr>
										<td style="text-align:right">联系方式：</td>
										<td colspan="2">
											<input name="phone" type="text"  class="textinput" value="${sessionScope.user.phone}"/>
										</td>
									</tr>
									<tr>
										<td style="text-align:right">&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
								<p style="text-align:center">
									<input type="hidden" name="email" value="${sessionScope.user.email}"/>
									<input type="hidden" name="username" value="${sessionScope.user.username}"/>
									<input type="image" name="submit"  src="${ctx }/client/images/botton_gif_025.gif" border="0" width="140" height="35"/>
 									
								</p>
								<p style="text-align:center">&nbsp;</p>
							</td>
						</tr>
					</table>
				
				
				</form>
				
				</td>
			</tr>
		</table>
	</div>
	<%@include file="./foot.jsp" %>
	
</body>
</html>
