<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>${version}-${profile}</title>
	<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
	<link href="/webjars/bootstrap/3.3.6/css/bootstrap-theme.min.css" rel="stylesheet" media="screen"/>
	<link href="/resources/css/login.css" rel="stylesheet" media="screen"/>
	<script type="text/javascript" src="/webjars/jquery/2.2.4/jquery.js"></script>
	<script src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
	<script>
		$(function() {
			var obj = new WxLogin({
				id:"login_container",
				appid: "wx83b3d682398b58c9",
				scope: "snsapi_login",
				redirect_uri: "http://todo.nonocast.cn/wechat/callback",
				state: "${_csrf.token}",
				style: "white"
			});
		});
	</script>
</head>
<body class="blue-bg">
<div class="container">
  <div style="text-align:center;">
    <div id="login_container"></div>
  </div>
</div>
</body>
</html>