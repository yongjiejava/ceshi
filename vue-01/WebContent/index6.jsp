<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>v-on点击事件</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	<input type="text"  v-model="num"><br>
	<button @click="num++">点击相加1</button><br>
	<button @click="add">点击相加2</button>
	<button @click="num--">点击相减1</button><br>
	<button @click="desc">点击相减2</button>
</div>
<script type="text/javascript">
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
			num:1
		},
		methods:{
			add(){
				this.num++;
			},
			desc(){
				this.num--;
			}
		}
	});
</script>
</body>
</html>