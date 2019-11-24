<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<!--2. 网上书城菜单列表  start -->
<div id="divmenu">
		<a href="${ctx}/showProductByPage.action?category=文学">文学</a> 
		<a href="${ctx}/showProductByPage.action?category=生活">生活</a> 
		<a href="${ctx}/showProductByPage.action?category=计算机">计算机</a> 
		<a href="${ctx}/showProductByPage.action?category=外语">外语</a> 
		<a href="${ctx}/showProductByPage.action?category=经营">经管</a>
		<a href="${ctx}/showProductByPage.action?category=励志">励志</a> 
		<a href="${ctx}/showProductByPage.action?category=社科">社科</a> 
		<a href="${ctx}/showProductByPage.action?category=学术">学术</a> 
		<a href="${ctx}/showProductByPage.action?category=少儿">少儿</a>
		<a href="${ctx}/showProductByPage.action?category=文学">艺术</a> 
		<a href="${ctx}/showProductByPage.action?category=原版">原版</a> 
		<a href="${ctx}/showProductByPage.action?category=科技">科技</a> 
		<a href="${ctx}/showProductByPage.action?category=考试">考试</a> 
		<a href="${ctx}/showProductByPage.action?category=生活百科">生活百科</a> 
		<a href="${ctx}/showProductByPage.action?" style="color:#FFFF00">全部商品目录</a>		
</div>
<div id="divsearch">
<form action="#" id="searchform">
		<tr>
			<td style="text-align:right; padding-right:220px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入书名"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${ctx  }/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>
<!-- 网上书城菜单列表  end -->