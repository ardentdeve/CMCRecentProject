<%@include file="VerifyAdmin.jsp"%>
<%@page language="java" import="project.*"%>
<title></title>
<% 
String anyErrors = request.getParameter("Error");
if(anyErrors!=null)
{
	if(anyErrors.equals("3"))
	{
		out.println("Enter a location which can be one of the following:SURBURBAN,URBAN,SMALL-CITY,or -1 if unknown");
	}
	if(anyErrors.equals("4"))
	{
		out.println("Enter a control which can be one of the following:PRIVATE,STATE,CITY,or -1 if unknown");
	}
	if(anyErrors.equals("6"))
	{
		out.println("Enter a female percantage enrolled between 0 and 100");
	}
	else if(anyErrors.equals("7"))
	{
		out.println("Enter a SAT Verbal score between 0 annd 800");
	}
	else if(anyErrors.equals("8"))
	{
		out.println("Enter a SAT Math score between 0 annd 800");
	}
	else if (anyErrors.equals("10")){
		out.println("Enter a number of percent receiving  financial aid that is  between 0 and 100");
    } 
	else if (anyErrors.equals("12")){
		out.println("Enter a number of percent of admitted applicants that is  between 0 and 100");
    } 
	else if (anyErrors.equals("13")){
		out.println("Enter a number of percent enrolled that is  between 0 and 100");
    }
	else if (anyErrors.equals("14")){
		out.println("Enter a number for the academic scale that is between 1 and 5");
    }
	else if (anyErrors.equals("15")){
		out.println("Enter a number for the social scale that is between 1 and 5");
    }
	else if (anyErrors.equals("16")){
		out.println("Enter a number for the quality of life scale that is between 1 and 5");
    } 
			
}
%>
<%    String university = request.getParameter("University");
    University uni = ah.getSpecificUni(university) ;
     ArrayList<String> Emphases = ah.getEmphasis(university);%>
</head>
<body>
<form method="post" action="EditUniversity_Action.jsp" name="EditForm">
<table style="text-align: left; width: 1043px; height: 718px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL <br>
</td>
<td style="vertical-align: top;"><input size="50" name="School" value ="<%=uni.getName()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE <br>
</td>
<td style="vertical-align: top;"><input name="State", value ="<%=uni.getState()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input 
name="Location", value ="<%=uni.getLocation()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name="Control", value ="<%=uni.getControl()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS <br>
</td>
<td style="vertical-align: top;"><input 
name="NoStudents", value ="<%=uni.getNumberStudents()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">%FEMALE <br>
</td>
<td style="vertical-align: top;"><input 
name="PctFemale", value ="<%=uni.getPctFemale()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL <br>
</td>
<td style="vertical-align: top;"><input 
name="SatVerbal", value ="<%=uni.getSatVerbal()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input
name="SatMath", value ="<%=uni.getSatMath()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input
name="Expenses", value ="<%=uni.getExpenses()%>"><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID <br>
</td>
<td style="vertical-align: top;"><input 
name="FinancialAid", value ="<%=uni.getPctFinancialAid()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER APPLICANTS <br>
</td>
<td style="vertical-align: top;"><input
name="NoApplicants", value ="<%=uni.getNumberOfApplicants()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED<br>
</td>
<td style="vertical-align: top;"><input
name="PctAdmitted", value ="<%=uni.getPctAdmitted()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input
name="PctEnrolled", value ="<%=uni.getPctEnrolled()%>"><br>
</td>
<tr>
<td style="vertical-align: top;">ACADEMIC SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><input
name="PctAcademicScale", value ="<%=uni.getAcademicScale()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><input
name="SocialScale", value ="<%=uni.getSocialScale()%>"><br>
</td>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE(1-5)<br>
</td>
<td style="vertical-align: top;"><input
name="QualityOfLifeScale", value ="<%=uni.getQualityOfLifeScale()%>"><br>
</td>
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
<td style="vertical-align: top;"> <input name="University" value="<%=uni.getName()%>" type="hidden"><input name="EditButton"
value="Apply Changes" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="ResetButton"
value="Cancel Changes " type="reset"><br>
</td>
</tbody>
</table>
<br>
</form>
</body>
</html>