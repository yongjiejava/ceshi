<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>定义全局组件</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	<!--使用定义好的全局组件-->
	<counter></counter>
	<counter></counter>
	<counter></counter>
</div>
<script type="text/javascript">
	//定义全局组件，两个参数：1，组件名称。2，组件参数
	Vue.component("counter",{
	template:'<button v-on:click="count++">你点了我 {{ count }} 次，我记住了.</button>',
	data(){
		return {
			count:0
			}
		}
	})
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
		
		}
	});
</script>
</body>
</html>