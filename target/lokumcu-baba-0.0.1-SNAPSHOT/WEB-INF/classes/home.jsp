<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix =
"form" uri = "http://www.springframework.org/tags/form"
%>  
<html>
	<head>
		<style>
			img{
				position: fixed;
				top: 50%;
				left: 50%;
				transform: translate(-50%,-50%);
				height:100vh;
				object-fit: contain;
			}
			
			@media only screen and
			 (orientation: portrait){
			 	img{
			 		position: fixed;
			 		top:50%;
			 		left: 50%;
			 		transform: translate(-50%,-50%);
			 		width: 100vw;
			 		object-fit: contain;
			 	}
			 }

			div{
				position: absolute;
				top:10%;
				left:50%;
				transform: translateX(-50%);
				width: 80%;
				display:flex;
				justify-content: center;
				align-items: center;
			}
		
			ul{
				display: flex;
				justify-content: center;
				align-items: center;
				flex-direction: column;
				width:100%;
				list-style: none;
			}
		
			form{
				border: 1px solid black;
				width: 80%;
				display:flex;
				justify-content: center;
				align-items:center;
			}

			li{
				width: 80%;
				height: 120px;
				display:flex;
				align-items:center;
				justify-content: center;
				border: 1px solid black;
				margin: 8px;
			}

			input{
				height: 96px;
				width: 80%;
				border-radius: 48px;
				border: 1px solid black;
				text-align: center;
				font-size: 3rem;
			}
		</style>
	</head>
	<body>
		<img src="home-slide-2-768x400.jpg" >
		<div>
		<form:form action = "/add" modelAttribute = "fr" ><br>
			
			<ul>
		 		<li>
		 			<form:input path ="tc"/>
		 		</li>
				<li>
					<form:input path ="fullName" />
				</li>
		 		<li>
		 			<form:input path ="address" />
		 		</li>
		 		<li>
		 			<form:input path ="phone" />
		 		</li>
		 		<li>
		 			<form:input path ="email" />
		 		</li>
		 		<li>
		 			<form:input path ="birth" />
		 		</li>
		 		<li>
		 			<form:radiobutton path ="franchisExp" value="true"/>
		 			<span>Evet</span>
		 			<form:radiobutton path ="franchisExp" value="false"/>
		 			<span>Hayır</span>
		 		</li>
		 		<li>
		 			<form:input path ="reason" />
		 		</li>
		 		<li>
		 			<form:input path ="location" />
		 		</li>
		 		<li>
		 			<form:input path ="amount" />
		 		</li>
		 		<li>
		 			<form:input path ="additional" />
		 		</li>
			</ul> 
			
		</form:form>
		</div>
	</body>
</html>
