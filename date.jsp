<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<!doctype html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<style>

		h2{color:blue; text-align:center;}
		.empty{visibility:hidden;}

	</style>

  </head>
  <body>
  <div class = "container">
  
  <div class="container">
  <div class="row row-cols-3">
    <div class="col"></div>
    <div class="col">
    <form action="" method="">
    	<h1>SignUpFrom.jsp</h1>
		<h2>課程報名表</h2>
		Email <input type="text" name="Email"  > ${EmailMsg}<br/> 	
		姓名<input type="text" name="Username"> <br/>
		
		性別<input type="radio" name="Sex" value="male"> 男
		<input type="radio" name="Sex" value="Womman"> 女	
		<input type="radio" name="Sex" value="mid">中性 ${SexMsg}
		<span class ="empty"><input type = "radio" name = "Sex" value = "null" checked>空的 </span>
		 <br/>

		聯絡電話<input type="cc-number" name="ContectNumber"> ${ContectNumberMsg} <br/>
		資訊來源 
		<input type="checkbox" name="Checkbox" value="Newspaper">報紙
		<input type="checkbox" name="Checkbox" value="Email" >Email
		<input type="checkbox" name="Checkbox" value= "Website" >網站 <br/>
		居住城市
		<select name = "city">
			<option value="tiepei">Taipei </option>
			<option value="taichung">Taichung</option>
			<option value= "kaohsiung"> Kaohsiung</option>
		</select> </br>
	<input type="submit" name="submit meth:post">
	<input type="reset" name="reset">
	</form>
<div>Have you any problem you can contect me Email ${adminEmail}</div>
    
    <div class="col"></div>
    
  </div>
</div>
  		
  	</div>
  </div>
   <h1>
   	<%
		String Email = (String) request.getParameter("Email");
 		if(Email != "" ){
 			out.print("有這個emaill"+Email);
 		}
   	%>
<%-- <%="這是自己傳給自己的Email ="+Email %>  --%>
  </body>
</html>
</body>
</html>
