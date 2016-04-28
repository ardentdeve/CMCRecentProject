<title>Login.jsp</title>
<% 
String anyErrors = request.getParameter("Error");
if(anyErrors!=null)
{
	if(anyErrors.equals("-1"))
	{
		out.println("The username or password you entered does not match any account");
	}
	else if(anyErrors.equals("-2"))
	{
		out.println("The username or password you entered does not match any account");
	}
	else if(anyErrors.equals("-3"))
	{
		out.println("database error");
	}
	else if (anyErrors.equals("-4")){
        out.println("<h1>LOG IN TO ACCESS PAGE</h1>");
    } 
			
}
%>
</head>
<html>
<head>
<style>
header {
background-color:black;
color:white;
text-align:center;
padding:5px;
}
nav {
line-height:30px;
background-color:#eeeeee;
height:300px;
width:100px;
float:left;
padding:5px;
}
section {
width:350px;
float:left;
padding:10px;
}
footer {
background-color:black;
color:white;
clear:both;
text-align:center;
padding:5px;
}
</style>
</head>
<body>

<body style="background-color:lightblue;">
<header>
<h1>WELCOME TO CHOOSE MY COLLEGE</h1>
</header>
<br>
<form method="post" action="Login-action.jsp" name="LoginForm">
<table style="text-align: center ; width: 300px; height: 300px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"
type="password"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="submitB"
value="submit" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="resetB"
value="reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
<br>
<br>
<header>
</header>

<br>
<br>
</body>
</html>