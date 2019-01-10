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

<input type="checkbox" name="skill" class="check" value="male"> Male
<input type="checkbox" name="skill" class="check" value="female"> Female
<input type="checkbox" name="skill" class="check" value="other"> Other

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