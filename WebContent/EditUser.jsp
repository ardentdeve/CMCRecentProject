<%@include file="VerifyAdmin.jsp"%>
<%@page language="java" import="project.*"%>
<title></title>
<%    String username = request.getParameter("User");
       User u = ah.findUser(username);
       
        
       
%>
</head>
<body>
<form method="post" action="EditUser_action.jsp" name="EditForm">
<table style="text-align: left; width: 600px; height: 600px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
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
<td style="vertical-align: top;"><input name="FirstName", value ="<%=u.getFirstName()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName", value ="<%=u.getLastName()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Username", value ="<%=u.getUsername()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password", value ="<%=u.getPassword()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Type  <br>
</td>
<td style="vertical-align: top;"><input 
name="Type", value ="<%=u.getType()%>"><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Status  <br>
</td>
<td style="vertical-align: top;"><input 
name="Status", value ="<%=u.getStatus()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="EditButton"
value="Edit User" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="ResetButton"
value="Reset " type="reset"><br>
</td>
</tr>
			<header>
				<h1>EDIT USER</h1>
			</header>
</tbody>
</table>
<br>
</form>
</body>
</html>
