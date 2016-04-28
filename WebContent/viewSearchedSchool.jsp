<%@include file="VerifyStudent.jsp"%>
<%@page language="java" import="project.*"%>
<title></title>
</head>
<body>
<%
    String university = request.getParameter("University");
    University u = sh.getUniInfo(university);
    System.err.println("univewregj is: " + university);
    ArrayList<String>Emphases = u.getEmphases();
    
 
%>
<table style="text-align: left; width: 815px; height: 480px;" border="1"
cellpadding="2" cellspacing="2">
<tr>
<td style="vertical-align: top;">
<form method="post" action="save.jsp" name="Save">
    <input name="Save" value="Save" type="submit"><br>
    <input name="University" value="<%=u.getName()%>" type="hidden">
</form>
<br>
</td>
<tr>
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><br><%=u.getName()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><br><%=u.getState()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><br><%=u.getLocation()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><br><%=u.getControl()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><br><%=u.getNumberStudents()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%FEMALE<br>
</td>
<td style="vertical-align: top;"><br><%=u.getPctFemale()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><br><%=u.getSatVerbal()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><br><%=u.getSatMath()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><br><%=u.getExpenses()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%FINANCIAL AID <br>
</td>
<td style="vertical-align: top;"><br><%=u.getPctFinancialAid()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS <br>
</td>
<td style="vertical-align: top;"><br><%=u.getNumberOfApplicants()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%ADMITTED<br>
</td>
<td style="vertical-align: top;"><br><%=u.getPctAdmitted()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%ENROLLED<br>
</td>
<td style="vertical-align: top;"><br><%=u.getPctEnrolled()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMIC SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><br><%=u.getAcademicScale()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><br><%=u.getSocialScale()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><br><%=u.getQualityOfLifeScale()%>
</td>
</tr>
<tr>

<tr>
<% 
  String emphases1= "";
  String emphases2="";
  String emphases3= "";
  String emphases4 ="";
  String emphases5= "";
  if(Emphases.size()>= 1) emphases1 = Emphases.get(0);
  if(Emphases.size()>= 2) emphases2 = Emphases.get(1);  
  if(Emphases.size()>= 3) emphases3= Emphases.get(2);
  if(Emphases.size()>= 4) emphases4 = Emphases.get(3);
  if(Emphases.size()>= 5) emphases5 = Emphases.get(4);
   %> 
<tr>
<td colspan="1" rowspan="6" style="vertical-align: top;">EMPHASES<br>
</td></tr>
<tr>
<td style="vertical-align: top;">
<input size ="40" name="emphases1", value ="<%=emphases1 %>"><br>
<input size ="40" name="emphases2", value ="<%=emphases2 %>"><br>
<input size ="40" name="emphases3", value ="<%=emphases3 %>"><br>
<input size ="40" name="emphases4", value ="<%=emphases4%>"><br>
<input size ="40"  name="emphases5",value ="<%=emphases5%>"><br>
</tr>
<tr>
</table>

<h1> MAY WE ALSO RECOMMEND </h1>
<br>
	<%
	       ArrayList<University> allUni = sh.viewRecommended(u) ;
				for (int i = 0; i < allUni.size(); i++) {
					University uni = allUni.get(i);
					 ArrayList<String>Emph = uni.getEmphases();
			%>
		<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
		<tr align="center">
		<td colspan="17" rowspan="1" style="vertical-align: top;"><form method="post" action="Save.jsp" name="Save">
    <input name="Save" value="Save" type="submit"><br>
    <input name="University" value="<%=uni.getName()%>" type="hidden">
</form><br></td>
		</tr>
		<td style="vertical-align: top;">SCHOOL<br>
		</td>
	<td style="vertical-align: top;"><br><%=uni.getName()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getState()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getLocation()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getControl()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getNumberStudents()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%FEMALE<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getPctFemale()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getSatVerbal()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getSatMath()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getExpenses()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%FINANCIAL AID <br>
</td>
<td style="vertical-align: top;"><br><%=uni.getPctFinancialAid()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS <br>
</td>
<td style="vertical-align: top;"><br><%=uni.getNumberOfApplicants()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%ADMITTED<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getPctAdmitted()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%ENROLLED<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getPctEnrolled()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMIC SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getAcademicScale()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getSocialScale()%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><br><%=uni.getQualityOfLifeScale()%>
</td>
</tr>
<tr>
<% 
  String emph1= "";
  String emph2="";
  String emph3= "";
  String emph4 ="";
  String emph5= "";
  if(Emph.size()>= 1) emph1 = Emphases.get(0);
  if(Emph.size()>= 2) emph2 = Emphases.get(1);  
  if(Emph.size()>= 3) emph3= Emphases.get(2);
  if(Emph.size()>= 4) emph4 = Emphases.get(3);
  if(Emph.size()>= 5) emph5 = Emphases.get(4);
   %> 
<tr>
<td colspan="1" rowspan="6" style="vertical-align: top;">EMPHASES<br>
</td></tr>
<tr>
<td style="vertical-align: top;">
<input size ="40" name="emphases1", value ="<%=emph1 %>"><br>
<input size ="40" name="emphases2", value ="<%=emph2 %>"><br>
<input size ="40" name="emphases3", value ="<%=emph3 %>"><br>
<input size ="40" name="emphases4", value ="<%=emph4%>"><br>
<input size ="40"  name="emphases5",value ="<%=emph5%>"><br>
</td>
</tr>
</table>
<br>			
<%}%>
</body>
</html>