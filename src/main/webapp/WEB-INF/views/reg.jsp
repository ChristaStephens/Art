<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<h1>Registration Landing Page</h1>




<h1>Here is the landing for User Registration</h1>

	<p>Please fill out the form below for our yearly free birthday
		coffee:</p>

	<!-- action is where the page takes us, usually the final page -->


	<form action="/result" method="post">

		<!-- Mr. Ms. Doctor Miss change our the below radio buttons between the p tags -->


		<p>
			Enter your first name: <br> <input name="name" pattern="[a-zA-Z]*" />
		</p>

			Enter your last name: <br> <input name="last" pattern="[a-zA-Z]*" />
		


		<p>
			Enter your email to receive a coupon for your free birthday drink: <br>
			<input type="email" name="email">
		</p>

			<p>
			<button>Submit</button>
			
			
			<button type="submit" class="btn btn-primary" href="/submit">Add</button>
		<a class="btn link" href="/result">Cancel</a>
		</p>

	</form>
	
	<a href ="/">home</a>

</body>
</html>