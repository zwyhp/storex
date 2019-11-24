<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet" href="${ctx }/client/css/main.css"
	type="text/css" />
</head>
<body class="main">
	<jsp:include page="./head.jsp" />
	<jsp:include page="./menu_search.jsp" />
	<div id="divpagecontent">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td>
					<div style="text-align: right; margin: 5px 10px 5px 0px">
						<a href="${ctx }/index.action">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
						<!-- 该图书类别 -->
						<a
							href="${ctx}/showProductByPage.action?category=${product.category}">&nbsp;${product.category}</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;${product.name}
						<!-- 该图书名称 -->
					</div>
					<table cellspacing="0" class="infocontent">
						<tr>
							<td><img src="${ctx}/client/ad/page_ad.jpg" width="900"
								height="84" />
								<table width="100%%" border="0" cellspacing="0">
									<tr>
										<td width="30%">
											<div class="divbookcover">
												<p>
													<!-- 显示该图书的图片 -->
													<img src="${ctx}/client${product.imgurl}" width="213"
														height="269" border="0" />
												</p>
											</div>
											<div style="text-align: center; margin-top: 10px">
												<!-- 显示购买图片，并加入购物车 -->
												<a href="${ctx}/AddCartServlet?id=${product.id}"> <img
													src="${ctx }/client/images/buybutton.gif" border="0"
													width="100" height="25" />
												</a>
											</div>
										</td>
										<td style="padding: 20px 5px 5px 5px"><img
											src="${ctx }/client/images/miniicon3.gif" width="16"
											height="16" /> <font class="bookname">&nbsp;${product.name}</font>
											<!-- 图书名称  -->
											<hr />售价：<font color="#FF0000">￥${product.price}</font>
										<!-- 售价 -->
											<hr /> 类别：${product.category }<!-- 类型 -->
											<hr />
											<p>
												<b>内容简介：</b>
											</p> ${product.description} <!-- 内容介绍 --></td>
									</tr>
								</table>
								<form action="uploadPng.action" method="post"
										enctype="multipart/form-data">
										<input type="hidden" value="${product.id}" name="id" />
									<input type="file" name="file" />  <input type="submit" value="更新图片">
								</form></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="./foot.jsp" />
</body>
</html>
