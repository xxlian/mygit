<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="webkit" name="renderer" />
    <meta content="跨境宝" name="keywords" />
    <meta content="跨境宝" name="description" />
    <title>跨境宝</title>
    <link rel="shortcut icon" href='<c:url value="/static/image/sysicon.ico " />' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/static/css/common.css" />' />
</head>

<body style="background: #fff;">
	<!--begin 顶部-->
	<div class="login_bar">
	    <div class="w1200">
            <div class="fl">
                <a href="javascript:void(0);" class="ilogo"><img  src='<c:url value="/static/image/top_ideal_scm.png" />' width="145px" alt="卓普信"/></a>
            </div>
	    </div>
	</div>
	<!--end 顶部-->

	<!--内容-->
	<div class="fullScreen">
	    <!--登录-->
	    <div class="login_box_info" style="background: url(<c:url value="/static/image/login_bg.png" />) center no-repeat;">
	        <div>
	            <div class="w1200">
	                <div class="login_boxJs">
	                    <form id="loginForm" action='<c:url value="/user/login" />' method="post">
	                    <div class="login_boxJs_box">
	                        <h3 class="login_boxJs_title"><span>用户登录</span></h3>
	                        <div class="login_boxJs_box_info">
	                            <div class="login_js_item">
	                                <input type="text" name="username" id="username"  placeholder="请输入账号" class="login_form login_form_tel" value="admin"/>
	                            </div>
	                            <div class="login_js_item">
	                                <input type="password" name="password" id="password"  placeholder="请输入密码" class="login_form login_form_pwd" value="123"/>
	                            </div>
	                            <div class="login_js_item" style="font-size:14px;color: #666;">
	                                <font style="color:red;font-size:20px" id="error_info">&nbsp;</font>
	                            </div>
	                            <div class="login_js_item">
	                                <a href="javascript:;" class="btn_submit_login" style="background: #0072BC" id="loginButton">登 录</a>
	                            </div>
	                        </div>
	                    </div>
	                   </form>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!--end 登录-->
	</div>
	<!--end 内容-->

	<script src='<c:url value="/static/js/jquery2.1.4.min.js" />' type="text/javascript"></script>
	<script type="text/javascript">
	    $(function(){
	        //用户点登陆操作
	        $('#loginButton').click(function(){
    			// 提交时验证表单
    			$.post(
    				$("#loginForm").attr("action"),
    				{ username: $("#username").val(), password: $("#password").val() },
    				function(data){
    					if(data.status == 1){
    	                    location.href='<c:url value="/" />';
    	                }else{
    	                    $('#error_info').html(data);
    	                }
    			});
	        });
	
	        $("body").keydown(function(event) {
	            if (event.keyCode == "13") {//keyCode=13是回车键
	            	$('#loginButton').click();
	            }
	        });  
	    });
	</script>
</body>
</html>