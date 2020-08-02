<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>v-for</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	<li v-for="user in users">
		{{user.name}}:{{user.age}}:{{user.gender}}
	</li>
</div>
<script type="text/javascript">
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
			users:[{name:'柳岩', gender:'女', age: 21},
			       {name:'虎哥', gender:'男', age: 30}, 
			       {name:'范冰冰', gender:'女', age: 24},
			       {name:'刘亦菲', gender:'女', age: 18},
			       {name:'迪丽热巴', gender:'女', age: 25}]
		}
	});
</script>
</body>
</html>