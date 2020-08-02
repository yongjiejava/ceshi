<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>定义局部组件</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	<!--使用子组件，同时传递title属性-->
	<introduce :title="msg"/>
</div>
<script type="text/javascript">
	Vue.component("introduce",{
		// 直接使用props接收到的属性来渲染页面
		template:'<h1>{{title}}</h1>',
		props:['title'] // 通过props来接收一个父组件传递的属性
	})
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
			msg:'大家好，我是张三'
		}
	});
</script>
</body>
</html>