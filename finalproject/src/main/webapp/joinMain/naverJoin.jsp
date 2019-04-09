<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
fieldset {
	border: none
}

.tbl_style_01 {
	width: 70%;	
	margin-left: 15%;
	margin-top:5%;
	border-collapse: collapse;
	border-spacing: 0;
	border-top: 2px solid #ddd;
	border-bottom: 2px solid #ddd;
}

#errRePasswd {
	color: red;
	font-size: 11px;
}


#errCustID {
	color: red;
	font-size: 11px;
}

#errPasswd {
	color: red;
	font-size: 11px;
}

.need {
	background-color: #E6E6E6;
}

td {
	padding: 7px 15px;
	border-bottom: 1px solid #ddd

}
th  {
	padding: 7px 15px;
	border-bottom: 1px solid #ddd

}
.btn1 {
	margin-top: 5%;
	margin-left: 20%;
    padding: 2% 10% 2% 10%;
    text-align: center;
}

.btn2 {
	margin-top: 5%;
	margin-left: 7%;
    padding: 2% 10% 2% 10%;
    text-align: center;
}
.testbox{
	padding:7% !important;
}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 50px;
  margin-bottom: 10px;
}

html{
  background-color: #ffffff;
}

.testbox {
  margin: 20px auto;
  width: 343px; 
  height: 464px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
}

input[type=radio] {
  visibility: hidden;
}

form{
	margin: 12% 30px;
}

label.radio {
	cursor: pointer;
  text-indent: 35px;
  overflow: visible;
  display: inline-block;
  position: relative;
  margin-bottom: 15px;
}

label.radio:before {
  background: #3a57af;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.5em;
	height: 0.25em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 3px solid #ffffff;
	border-top: none;
	border-right: none;

	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked + label:after {
	opacity: 1;
}

hr{
  color: #a9a9a9;
  opacity: 0.3;
}

input[type=text],input[type=password]{
  width: 200px; 
  height: 39px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}

input[type=password]{
  margin-bottom: 25px;
}

#icon {
  display: inline-block;
  width: 30px;
  background-color: #3a57af;
  padding: 8px 0px 8px 15px;
  margin-left: 15px;
  -webkit-border-radius: 4px 0px 0px 4px; 
  -moz-border-radius: 4px 0px 0px 4px; 
  border-radius: 4px 0px 0px 4px;
  color: white;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 0px #cbc9c9;
  margin-left: 12%;
  margin-top: 9%;
}

.gender {
  margin-left: 30px;
  margin-bottom: 30px;
}

.accounttype{
  margin-left: 8px;
  margin-top: 20px;
}

.button {
  font-size: 14px;
  font-weight: 600;
  color: white;
  padding: 10px 30px 5px 30px;
  margin: 60px 90px 20px 105px;
  display: inline-block;
  text-decoration: none;
  height: 27px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border-radius: 5px; 
  background-color: #3a57af; 
  -webkit-box-shadow: 0 3px rgba(58,87,175,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: relative;
}

.button:hover {
  top: 3px;
  background-color:#2e458b;
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}

</style>
<script type="text/javascript">
	$(document).ready(function(e){
		$('.button').on('click', function() {
			$.ajax({
				type: 'POST',
				dataType:'text',
				url: '/myfinal/joinInsert.do',
				data: 'id='+$('#id').val() +'&pass='+$('#pass').val() +'&email=' +$('#email').val() + '&name=' +$('#name').val(),
				success: naver()
			});
		})
	});
	
	function naver(){
		opener.document.getElementById('seId').value = $('#id').val();
		opener.parent.setSession();
		window.close();
	}
</script>
</head>
<body>


<div class="testbox">
<h1>간편 회원가입</h1>

	<!-- <form action="/myfinal/joinInsert.do" id="frm" method="post"> -->
	<hr>
	  
		<label id="icon" for="name"><i class="icon-user"></i></label>
			<input type="text" id="id" name="id" class="inputText" onkeyup="idFunction()" maxlength="15" placeholder="아이디"><br/>
		<label id="icon" for="name"><i class="icon-shield"></i></label>
			<input type="password" id="pass" name="pass" class="inputText" maxlength="30" placeholder="비밀번호">
			<!-- <div class="gender">
				<input type="radio" value="None" id="male" name="gender" checked/>
				<label for="male" class="radio" chec>Male</label>
				<input type="radio" value="None" id="female" name="gender" />
				<label for="female" class="radio">Female</label>
			</div>  -->
			<input type="hidden" id="email" name="email" value="${email}">
			<input type="hidden" id="name" name="name" value="${name}">
			
		
		  <a href="#" class="button">회원가입</a>
	<!-- </form> -->
</div>


	<script src="joinMain/vendor/bootstrap/js/join.js"></script>
</body>
</html>