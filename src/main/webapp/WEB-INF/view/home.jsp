<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<spring:message code="Yıl" var="birthYear" />
<spring:message code="Ay" var="birthMonth" />
<spring:message code="Gün" var="birthDay" />  
<html>
	<head>
		<style>
			*{
				font-family: sans-serif;
				color: white;
			}

			h1{
				font-weight: 700;
				font-size: 4em;
				text-transform: uppercase;
				text-align: center;
			}
			
			img{
				position: fixed;
				top: 50%;
				left: 50%;
				transform: translate(-50%,-50%);
				height:100vh;
				object-fit: contain;
				margin: 0;
			}
			
			@media only screen and
			 (orientation: landscape){
			 	img{
			 		position: fixed;
			 		top:50%;
			 		left: 50%;
			 		transform: translate(-50%,-50%);
			 		width: 120%;
			 		object-fit: cover;
			 		margin: 0;
			 	}
			 }

			div{
				position: absolute;
				left:50%;
				transform: translateX(-50%);
				width: 90%;
				background: rgba(33,33,44,0.9);
				flex-direction:column;
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
				width: 100%;
				display:flex;
				justify-content: center;
				align-items:center;
			}

			li{
				width: 80%;
				display:flex;
				flex-direction:column;
				align-items:center;
				justify-content: center;
				margin: 8px;
				padding:12px;
			}

			.check{
				display: flex;
				justify-content: center;
				align-items: center;
				font-size: 2rem;
				flex-direction: row;
			}

			input{
				height: 80px;
				width: 80%;
				border-radius: 40px;
				padding:4px;
				text-align: center;
				font-size: 2rem;
				background: transparent;
				border: 3px solid white;
			}

			textarea{
				height: 400px;
				width: 100%;
				border-radius: 48px;
				font-size: 2rem;
				border: 3px solid white;
				background: transparent;
				text-align: center;
			}

			.text-container{
				height: 420px;
			}

			span{
				margin-right: 20%;
			}

			.radio{
				width: 10%;
				height: 30px;
			}

			.radio2{
				margin-right:30%;
			}

			p{
				font-size: 2rem;
				padding: 0;
			}

			.slash{
				font-size: 3rem;
			}
			
			.dates{
				position: relative;
				background: transparent;
				display: flex;
				flex-direction: row;
				justify-content: center;
				align-items: center;
				transform: translateX(0);
				left: 0;
			}

			.dates input{
				width: 30%;
			}
		</style>
	</head>
	<body>
		<h1>LOKUMCU BABA</h1>
		<img src="/images/home-slide-2-768x400.jpg" >
		<div>
		<h1>Lokumcu Baba Bayilik Önbaşvuru Formu</h1>
		<form:form modelAttribute="fr" action="/add" method="Post"><br>
			<ul>
		 		<li>
		 			<p>TC KİMLİK NUMARANIZ:</p>
		 			<form:input path="tc"/>
		 		</li>
				<li>
					<p>İSİM/SOYİSMİNİZ:</p>
					<form:input path="fullName"/>
				</li>
		 		<li>
		 			<p>ADRESİNİZ:</p>
		 			<form:input path="address"/>
		 		</li>
		 		<li>
		 			<p>TELEFON NUMARANIZ:</p>
		 			<form:input path="phone"/>
		 		</li>
		 		<li>
		 			<p>E-POSTA ADRESİNİZ:</p>
		 			<form:input path="email"/>
		 		</li>
		 		<li>
		 			<p>DOĞUM TARİHİNİZ:</p>
		 			<div class="dates"><form:input path="birthDay"/><p class="slash">/</p><form:input path="birthMonth"/><p class="slash">/</p><form:input path="birthYear"/></div>
		 		</li>
		 		<li class="check">
		 			<p>Daha önce perakende satış yaptınız mı?</p>
		 			<form:radiobutton path="franchisExp" cssClass="radio" value="true"/><span>Evet</span>
		 			<form:radiobutton path="franchisExp" cssClass="radio" value="false"/>Hayır
		 		</li>
		 		<li>
		 			<p>Neden bayilik açmak istiyorsunuz?</p>
		 			<form:input path="reason"/>
		 		</li>
		 		<li>
		 			<p>Bayilik açmak istediğiniz il/ilçe/semt:</p>
		 			<form:input path="location" />
		 		</li>
		 		<li>
		 			<p>Yatırım miktarınız ne kadar?</p>
		 			<form:input path="amount"/>
		 		</li>
		 		<li class="text-container">
		 			<p>Eklemek istedikleriniz:</p>
		 			<form:textarea path="additional" rows="5"/>
		 		</li>
		 		<li>
					<input type="submit" value="BAŞVURU GÖNDER">
		 		</li>
			</ul> 
			
		</form:form>
		</div>
	</body>
</html>
