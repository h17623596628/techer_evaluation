<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<title>投票后台管理系统</title>
<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>穷在闹市出品</title>

		<!-- 公共样式 开始 -->
		<link rel="shortcut icon" href="../images/favicon.ico"/>
		<link rel="bookmark" href="../images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="../css/base.css">
		<link rel="stylesheet" type="text/css" href="../css/iconfont.css">
		<script type="text/javascript" src="../framework/jquery-1.11.3.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="../framework/html5shiv.min.js"></script>
	      	<script src="../framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="../layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="../css/jquery.mCustomScrollbar.css">
		<script src="../framework/jquery-ui-1.10.4.min.js"></script>
		<script src="../framework/jquery.mousewheel.min.js"></script>
		<script src="../framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<link rel="stylesheet" type="text/css" href="../css/frameStyle.css">
		<script type="text/javascript" src="../framework/frame.js" ></script>
		
	</head>

	<body>
		<!-- 左侧菜单 - 开始 -->
		<div class="frameMenu">
		    <div class="logo">
		        <img src="../images/logo.png"/>
		        <div class="logoText">
		            <h1>穷在闹市出品</h1>
		            <p>qiongzainaoshi</p>
		        </div>
		    </div>
		    <div class="menu">
		        <ul>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-liuliangyunpingtaitubiao03 left"></i>用户管理<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                		<dt><a href="javascript:void(0)" onclick="menuCAClick('user_list',this)">用户列表</a></dt>
		                </dl>
		            </li>
		           <!--  <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-liuliangyunpingtaitubiao03 left"></i>比赛管理<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('match_list',this)">比赛列表</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('match_addb',this)">添加比赛</a></dt>
		                </dl>
		            </li>
		        
		            <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left"></i>比赛选手管理<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('player_list',this)">歌手列表</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('player_adda',this)">添加歌手</a></dt>
		                </dl>
		            </li>
		            <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left"></i>比赛场次管理<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('match_control',this)">比赛列表</a></dt>	
		                </dl>
		            </li>
		             <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left"></i>投票管理<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                  <dt><a href="javascript:void(0)" onclick="menuCAClick('voteMatchpkinfo',this)">投票选择</a></dt>
		                  <dt><a href="javascript:void(0)" onclick="menuCAClick('vote',this)">观众投票</a></dt>
		                </dl>
		            </li> -->
		             <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left"></i>歌曲管理<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('music_list',this)">歌曲列表</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('music_adda',this)">歌曲新增</a></dt>
		                </dl>
		            </li>
		        </ul>
		    </div>
		</div>
		
		<div class="main">
			<!-- 头部栏 - 开始 -->
			<div class="frameTop">
				<img class="jt" src="../images/top_jt.png"/>
				<div class="topMenu">
					<ul>
						<li><a href="javascript:void(0)" onclick="menuCAClick('modify_password',this)"><i class="iconfont icon-yonghu1"></i>管理员</a></li>
						<li><a href="javascript:void(0)" onclick="menuCAClick('modify_password',this)"><i class="iconfont icon-xiugaimima"></i>修改密码</a></li>
						<li><a href="login"><i class="iconfont icon-084tuichu"></i>注销</a></li>
					</ul>
				</div>
			</div>
			<!-- 头部栏 - 结束 -->
			
			<!-- 核心区域 - 开始 -->
			<div class="frameMain">
				<div class="title" id="frameMainTitle">
					<span><i class="iconfont icon-xianshiqi"></i>后台首页</span>
				</div>
				<div class="con">
					<iframe id="mainIframe" src="" scrolling="no"></iframe>
				</div>
			</div>
			<!-- 核心区域 - 结束 -->
		</div>
	</body>

</html>