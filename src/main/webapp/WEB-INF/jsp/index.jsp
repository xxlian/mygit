<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragrma","no-cache");
	response.setDateHeader("Expires",0);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>跨境宝</title>
</head>

<body class="body_fff" id="bodyCss">
	<!--头部-->
	<div class="fullScreen index_top">
		<!--nav-->
		<div class="w1200">
			<div class="Jnav">
				<div class="fl">
					<div class="my_word">
						<a href="javascript:;" id="workbench">我的工作台</a>
					</div>
				</div>
				<div class="fr">
					<div class="my_login">
						<span class="drop_pop"></span>
						<!--资料弹出 -->
						<div class="user_pop hideObj">
							<span></span>
							<ul>
								<li><a href="javascript:;" onclick=''>${user.userName }</a></li>
								<li><a href="javascript:;" onclick=''>修改密码</a></li>
								<li style="border-bottom: none;"><a href='<c:url value="/user/logout" />'>退出</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end 头部-->
	<!--内容区域-->
	<div class="fullScreen">
		<div class="Jcontainer">
			<div class="index_container">
				<!--左侧栏-->
				<div class="fl leftMenu">
					<a href="javascript:;" class="btn_hide_secondBar"></a>
					<h3 class="menuBar_btn"></h3>
					<ul class="left_menu_first">
							<li class="menu_vip_f1">
								<!--2级菜单-->
								<a href="javascript:;">
									<span class="scale_pop">电商订单a</span> 
									<i class="iPoint iPoint_f2"></i>
									<span class="iMenu">电商订单a</span>
								</a> 
								<ul class="left_menu_second">
									<li class="menu_logo">电商订单</li>
									<li class="menu_vip_f2">
										<a href="javascript:void(0);" lang='<c:url value="/list/loadB2COrderList.html" />'>订单列表</a>
									</li>
									<li class="menu_vip_f2">
										<a href="javascript:void(0);" lang='<c:url value="/list/importB2COrder.html" />'>订单导入</a>
									</li>
									<li class="menu_vip_f2">
										<a href="javascript:void(0);" lang='<c:url value="/list/loadB2CInvalidList.html" />'>作废订单</a>
									</li>
									<li class="menu_vip_f2">
										<a href="javascript:void(0);" lang='<c:url value="/list/loadB2CAbnormalList.html" />'>异常订单</a>
									</li>
									<li class="menu_vip_f2">
										<a href="javascript:void(0);" lang='<c:url value="/list/loadUnNormalOrderList.html" />'>异常列表</a>
									</li>
									<li class="menu_vip_f2">
										<a href="javascript:void(0);" lang='<c:url value="/list/loadB2CRecoveryList.html" />'>订单回收站</a>
									</li>
								</ul> 
								<!-- end 2级菜单-->
							</li>
							<li class="menu_vip_f1">
								<!--2级菜单-->
								<a href="javascript:;">
									<span class="scale_pop">电商订单u</span> 
									<i class="iPoint iPoint_f2"></i>
									<span class="iMenu">电商订单u</span>
								</a> 
							</li>
					</ul>
				</div>
				<!--end 左侧栏-->

				<!--右侧内容-->
				<div class="right_content" id="rightContent">
				</div>
				<!--end 右侧内容-->
			</div>
		</div>
		<!--end 内容区域-->

		<!--透明背景，弹窗的时候需要一起显示！-->
		<div class="pop_flexbg hideObj" id="transparentDiv"></div>

		<!--弹窗   用户确认框-->
		<div class="prompt_box hideObj" id="confirmDiv">
			<div class="points">
				<img src='<c:url value="/static/image/delete.png" />'>
					<div class="points_message" id="confirmContent">你确定要执行操作吗？</div>
			</div>
			<a class="ok" href="javascript:;" id="confirmButton">确定</a> <a
				href="javascript:;" class="no">取消</a>
		</div>
		<!--end 弹窗-->

		<!--弹窗  操作提示-->
		<div class="prompt_box hideObj" id="warn_div">
			<div class="points">
				<img src='<c:url value="/static/image/blue_warm.png" />'>
					<div class="points_message" id="warn_content">只能选择一条记录</div>
			</div>
			<a class="know" href="javascript:;" id="warn_button">知道了</a>
		</div>
		<!--end 弹窗-->

		<!--弹窗  操作提示-->
		<div class="prompt_box hideObj" id="prompt_div">
			<div class="points">
				<img src='<c:url value="/static/image/know.png" />'>
					<div class="points_message" id="propt_content">操作成功</div>
			</div>
			<a class="know" href="javascript:;" id="prompt_button">知道了</a>
		</div>
		<!--end 弹窗-->

		<!--弹窗-->
		<div class="prompt_box hideObj" id="fail_div">
			<div class="points">
				<img src='<c:url value="/static/image/fail.png" />'>
					<div class="points_message" id="fail_content">操作失败</div>
			</div>
			<a class="know" href="javascript:;" id="fail_button">知道了</a>
		</div>
		<!--end 弹窗-->

		<!--弹窗  校验弹出提示-->
		<div class="prompt_box hideObj" id="load_div">
			<div class="points">
				<img src='<c:url value="/static/image/loader.gif" />'>
					<div class="points_message">提交中...</div>
			</div>
			<a class="know" href="javascript:;">稍等一下</a>
		</div>
		<!--end 弹窗-->

	</div>
	<!-- 标记 登陆页面 -->
	<div id="login_tag">tag</div>
</body>
</html>