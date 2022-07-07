<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page 
import = "java.text.SimpleDateFormat,
 java.util.Date, 
 java.util.concurrent.TimeUnit"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
    <form action="" method="get">
      <h1>請輸入您的出先年月日</h1>
      <label>輸入出生年月日 </label>
      <input type="date" name="date" value ="2000-04-08">
      <input type="submit" name="submit">
     </form>

    <%
		String date  = (String) request.getParameter("date");
    	out.print(date);
    	
    	
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
    	Date dateobj = sdf.parse(date);
    	Date today = new Date();
    	
    	Long BirthdayMillSecs = dateobj.getTime();
    	Long TodayMillSecs = today.getTime();
 
    	Long days =(TodayMillSecs-BirthdayMillSecs)/1000/60/60/24 ;
    	out.println("活了多少天"+days+"天"); 
    	

    %>
    
   
 </div>
</div>
</div>	
 </div>	   
  </body>
</html>

