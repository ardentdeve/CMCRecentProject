<%@include file="VerifyAdmin.jsp"%>

<html>
<head>
<title></title>
</head>
<body>
<br>
<br>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
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
<tbody>
<tr align="center">

<td colspan="9" rowspan="1" style="vertical-align: top;"><a
href="AddUser.jsp">Add a new user </a><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><br>
</td>
<td style="vertical-align: top;"><br>
</td>
<td style="vertical-align: top; text-align: center;">First<br>
</td>
<td style="vertical-align: top; text-align: center;">Last<br>
</td>
<td style="vertical-align: top; text-align: center;">Username<br>
</td>
<td style="vertical-align: top; text-align: center;">Password<br>
</td>
<td style="vertical-align: top; text-align: center;">Type<br>
</td>
<td style="vertical-align: top; text-align: center;">Status<br>
</td>
<td style="vertical-align: top;"><br>
</td>>
</tr>
<% 
     ArrayList<User>allUsers= ah.getUsers();
      for (int i = 0;i<allUsers.size();i++){
        User u = allUsers.get(i); %> 
 <tr>        
<td style="vertical-align: top;">
<form method="post" action="deactivate.jsp" name="deactivate">
    <input name="Deactivate" value="deactivate" type="submit"><br>
    <input name="User" value="<%=u.getUsername()%>" type="hidden">
</form> 
</td>
<td style="vertical-align: top;"><br>
</td>            
<td style="vertical-align: top;"><br><%=u.getFirstName()%>
</td>
<td style="vertical-align: top;"><br><%=u.getLastName()%>
</td>
<td style="vertical-align: top;"><br><%=u.getUsername()%>
</td>
<td style="vertical-align: top;"><br><%=u.getPassword()%>
</td>
<td style="vertical-align: top;"><br><%=u.getType()%>
</td>
<td style="vertical-align: top;"><br><%=u.getStatus()%>
<br>
</td>
<td style="vertical-align: top;">
<form method="post" action="EditUser.jsp" name="edit">
    <input name="Edit" value="Edit" type="submit"><br>
    <input name="User" value="<%=u.getUsername()%>" type="hidden">
</form>  
</tr>
<%}%>
			<header>
				<h1>MANAGE USERS</h1>
			</header>
</tbody>
</table>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>