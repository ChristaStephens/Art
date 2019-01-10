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

<h2>Choose an image: Left or right?</h2>
<form action="/result" method="post">

<p> ${users.name } </p>

<!-- this works to allow for only one boxed to get check w/ js below. -->
<!-- need to combine with info on buttons that I have now (labels) -->


<!-- name attribute is what gets used for the param in the controller -->


<ul>

  <input type="checkbox" name= "cat1" class ="check" id="cb1" />
    <label for="cb1"><img src="https://source.unsplash.com/300x300/?modern" /></label>
  
  <input type="checkbox" name= "cat1" class ="check" id="cb2" />
    <label for="cb2"><img src="https://source.unsplash.com/300x300/?african" /></label>
    
    <!-- name each set by cat 1, 2, 3 -8 so that I can pull data based on click? -->
  
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

</form>
		<button type="button" href="/result" onclick="alert('Choices Submitted')">Submit</button>

<a href ="/result">back to form</a>
</body>
</html>