<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1>Home Page</h1>
<p>Landing</p>
<p>
use this to create buttons for search terms and for how a user will
pick furniture
https://source.unsplash.com/

"https://source.unsplash.com/featured/?{KEYWORD},{KEYWORD}
* Optionally, to specify a size, place it after the base URL.

Search with size
https://source.unsplash.com/1600x900/?nature,water"
</p>

<form action="/result" method="post">

<input type="radio" name="coffee"value="Hot Chocolate"> Hot Chocolate<br>
		 	<input type="radio" name="coffee" value="Chai Latte"> Chai Latte<br>
			<input type="radio" name="coffee" value="Light Roast"> Light Roast<br>
			
			<label>
  <input type="radio" name="test" value="small" checked>
  <img src="https://source.unsplash.com/400x400/?nature,water">
</label>
			
			//possible put the "true to fale instead", still need the picture to show next to the button
			<input type="radio" onclick="javascript:window.location.href='https://source.unsplash.com/1600x900/?nature,water'; return true;" />
			
			<div onClick="window.location = 'https://source.unsplash.com/1600x900/?nature,water';">
    <input type="radio" style="pointer-events:none;"> 
</div>

</form>
</body>
</html>