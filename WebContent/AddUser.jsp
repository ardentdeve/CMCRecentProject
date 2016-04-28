<%@include file="VerifyAdmin.jsp"%>

<html>
<head>

<title>Add User Form</title>
</head>
<body bgcolor ="white">
<br>
<br>
<h1 style="text-align: center;"> </h1>
<form method="post" action="AddUser_action.jsp" name="addUser"><br>
<table style="text-align: left; width: 615px; height: 439px;"
border="1" cellpadding="2" cellspacing="2" align="center">
<body style="background-color: lightblue;">
				<style>
header {
	background-color: black;
	color: white;
	text-align: center;
	padding: 5px;
}

nav {
	line-height: 30px;
	background-color: #eeeeee;
	height: 300px;
	width: 100px;
	float: left;
	padding: 5px;
}

section {
	width: 350px;
	float: left;
	padding: 10px;
}

footer {
	background-color: black;
	color: white;
	clear: both;
	text-align: center;
	padding: 5px;
}
</style>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Username <br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type"> </td>
</tr>
<tr>
<td style="vertical-align: top;"><input value="Add User"
name="Add" type="submit"></td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
			<header>
				<h1>ENTER NEW USER DETAILS</h1>
			</header>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>
