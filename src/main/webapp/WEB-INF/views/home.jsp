<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1>Home Page</h1>
<p>Landing</p>

<form action="/result" method="post">

<p> ${users.name } </p>

<!-- this works to allow for only one boxed to get check w/ js below. -->
<!-- need to combine with info on buttons that I have now (labels) -->


<p>name attribute is what gets used for the param in the controller</p>


<ul>

  <input type="checkbox" name= "cat1" class ="check" id="cb1" />
    <label for="cb1"><img src="https://source.unsplash.com/300x300/?modern" /></label>
  
  <input type="checkbox" name= "cat1" class ="check" id="cb2" />
    <label for="cb2"><img src="https://source.unsplash.com/300x300/?african" /></label>
    
    <!-- name each set by cat 1, 2, 3 -8 so that I can pull data based on click? -->
  
  <input type="checkbox" class ="check" id="cb3" />
    <label for="cb3"><img src="http://lorempixel.com/102/102" /></label>
  
  <input type="checkbox" class ="check" id="cb4" />
    <label for="cb4"><img src="http://lorempixel.com/103/103" /></label>
  
</ul>

<script>
$(document).ready(function(){
    $('.check').click(function() {
        $('.check').not(this).prop('checked', false);
    });
});
</script>


			<p> want to put "required" for min number of boxes to check</p>
			<!-- for buttons will change to modern v contempary -->
			<label>

<br></br>

			<label for="choose-1">
  <input type="checkbox" id="choose-1" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?modern">
</label>
		
		<br></br>	
						<label for="choose-2">
  <input type="checkbox" id="choose-2" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?african">
</label>
		
		<br></br>
		
				
		<br></br>
		
		
		<button type="button" href="/result" onclick="alert('Choices Submitted')">Submit</button>
		
		
		
			

</form>

<a href ="/result">back to form</a>
</body>
</html>