<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>bookStore列表</title>
<%--导入css --%>
<link rel="stylesheet" href="${ctx }/client/css/main.css"
	type="text/css" />
</head>
<body class="main">
	<%@include file="./head.jsp"%>
	<%@include file="./menu_search.jsp"%>
	<div id="divpagecontent">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td>
					<div style="text-align: right; margin: 5px 10px 5px 0px">
						<a href="${ctx }/client/index.jsp">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;

						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp; 图书列表
					</div>
					<table cellspacing="0" class="listcontent">
						<tr>
							<td>
								<h1>商品目录</h1>
								<hr />
								<h1></h1>&nbsp;&nbsp;&nbsp;&nbsp;共 ${bean.totalCount} 种商品
								<hr />
								<div style="margin-top: 20px; margin-bottom: 5px">
									<img src="${ctx }/client/images/productlist.gif" width="100%"
										height="38" />
								</div>

								<table cellspacing="0" class="booklist">
									<tr>
										<c:forEach items="${bean.lstProduct}" var="item">
											<td>
												<div class="divbookpic">
													<p>
														<a href="${ctx}/productinfo.action?id=${item.id}">
														 <img src="${ctx }/client${item.imgurl}"width="115" height="129" border="0" />
														</a>
													</p>
												</div>
												<div class="divlisttitle">
													<a href="">书名：${item.name }<br />售价：${item.price}￥
													</a>
												</div>
											</td>
										</c:forEach>
									</tr>
								</table>

								<div class="pagination">
									<ul>
										<!-- 测试上一页能否使用 -->
										<!-- 可以使用上一页 -->
										<c:if test="${bean.currentPage!=1}">
											<li class="disablepage_p"><a class="disablepage_a"
												href="${ctx}/showProductByPage.action?category=${bean.category}&currentPage=${bean.currentPage-1}"></a></li>
										</c:if>
										<c:if test="${bean.currentPage==1}">
											<!--不能使用上一页  -->
											<li class="disablepage_p2"></li>
										</c:if>

										<!-- 循环输出页码 -->
										<c:forEach end="${bean.pageCount}" begin="1" var="i">
										<!-- 测试是否当前页码  -->
										<c:if test="${i == bean.currentPage}">
										<li class="currentpage"></li>
										<!-- 测试是否其他页码，并加入链接 -->
										</c:if>
										<c:if test="${i != bean.currentPage}">
										<li><a href="${ctx}/showProductByPage.action?category=${bean.category}&currentPage=${i}">${i}</a></li>
										</c:if>
										</c:forEach>
										
										
										
										<!-- 测试下一页能否使用 -->
										<!-- 测试不能使用下一页，当前页就是最后一页，或者总页码为0  -->
										<c:if test="${bean.currentPage == bean.pageCount}">
										<li class="disablepage_n2"></li>
										<!-- 测试可以使用下一页，当前页不是最后一页并且总页码不为0 ，并加入超链接 -->
										</c:if>
										<c:if test="${bean.currentPage != bean.pageCount}">
										<li class="disablepage_n"><a class="disablepage_a"
											href="${ctx}/showProductByPage.action?category=${bean.category}&currentPage=${bean.currentPage+1}"></a></li>
										</c:if>

									</ul>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<%@include file="./foot.jsp"%>
</body>
</html>
