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

<form action="/result" method="post">


			<p> want to put "required" for min number of boxes to check</p>
			
			<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?nature,water">
</label>

<br></br>
			<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?modern">
</label>
		
		<br></br>	
						<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?african">
</label>
		
		<br></br>
		
				<br></br>	
						<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?wildlife">
</label>
		
		<br></br>
		
						<br></br>	
						<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?urban">
</label>
		
		<br></br>
		
								<br></br>	
						<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?abstract">
</label>
		
		<br></br>
			
			
											<br></br>	
						<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?pop art">
</label>
		
		<br></br>
		
								<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?landscape">
</label>
		
		<br></br>
			
			
			
					<br></br>
		
								<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?space">
</label>
		
		<br></br>
		
							<br></br>
		
								<label>
  <input type="checkbox" name="test" value="small" unchecked>
  <img src="https://source.unsplash.com/300x300/?spa">
</label>
		
		<br></br>
		
		
		<button type="button" href="/result" onclick="alert('Choices Submitted')">Submit</button>
		
		
			

</form>

<a href ="/result">back to form</a>
</body>
</html>