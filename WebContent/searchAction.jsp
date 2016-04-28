<%@include file="VerifyStudent.jsp"%>
<%@page language="java" import="project.*"%>
<html>
<head>
<title></title>
</head>
<body>
<br>
<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%  
    String school = request.getParameter("schoolName");
    String state = request.getParameter("state");
    String location = request.getParameter("location");
    String control = request.getParameter("control");
    int numberOfStudentsMin = -1;
    int numberOfStudentsMax = -1;
    double PctFemaleMin = -1;
    double PctFemaleMax = -1;
    double satVerbalMin = -1;
    double satVerbalMax = -1;
    double satMathMin = -1;
    double satMathMax = -1;
    double ExpensesMin = -1;
    double ExpensesMax = -1;
    double PctAidMin= -1;
    double PctAidMax = -1;
    int  ApplicantsMin = -1;
    int ApplicantsMax = -1;
    double PctAdmittedMin = -1;
    double PctAdmittedMax = -1;
    double EnrolledMin = -1;
    double EnrolledMax = -1;
    int  AcademicScaleMin= -1;
    int AcademicScaleMax= -1;
    int  socialScaleMin=  -1;
    int socialScaleMax = -1;
    int  qualityOfLifeScaleMin = -1;
    int qualityOfLifeScaleMax = -1;
    
    if(!request.getParameter("numberOfStudentsMin").equals(""))
    {
   
    	numberOfStudentsMin= Integer.parseInt(request.getParameter("numberOfStudentsMin"));
    }
    System.err.println(numberOfStudentsMin);
    if(!request.getParameter("numberOfStudentsMax").equals(""))
    {
    	numberOfStudentsMax = Integer.parseInt(request.getParameter("numberOfStudentsMax"));
    }
    if(!request.getParameter("PctFemaleMin").equals(""))
    {
    	PctFemaleMin = Double.parseDouble(request.getParameter("PctFemaleMin"));
    } 
    if(!request.getParameter("PctFemaleMax").equals(""))
    {
    	PctFemaleMax = Double.parseDouble(request.getParameter("PctFemaleMax"));
    }
    if(!request.getParameter("SatVerbalMin").equals(""))
    {
    	 satVerbalMin = Double.parseDouble(request.getParameter("SatVerbalMin"));
    }
    if(!request.getParameter("SatVerbalMax").equals(""))
    {
    	 satVerbalMax = Double.parseDouble(request.getParameter("SatVerbalMax"));
    }
    if(!request.getParameter("SatMathMin").equals(""))
    {
    	 satMathMin= Double.parseDouble(request.getParameter("SatMathMin"));
    }
    if(!request.getParameter("SatMathMax").equals(""))
    {
    	 satMathMax = Double.parseDouble(request.getParameter("SatMathMax"));
    }
    if(!request.getParameter("ExpensesMin").equals(""))
    {
    	ExpensesMin= Double.parseDouble(request.getParameter("ExpensesMin"));
    }
    if(!request.getParameter("ExpensesMax").equals(""))
    {
    	ExpensesMax = Double.parseDouble(request.getParameter("ExpensesMax"));
    }
    if(!request.getParameter("PctAidMin").equals(""))
    {
    	PctAidMin= Double.parseDouble(request.getParameter("PctAidMin"));
    }
    if(!request.getParameter("PctAidMax").equals(""))
    {
    	PctAidMax = Double.parseDouble(request.getParameter("PctAidMax"));
    }
    if(!request.getParameter("ApplicantsMin").equals(""))
    {
    	ApplicantsMin= Integer.parseInt(request.getParameter("ApplicantsMin"));
    }
    if(!request.getParameter("ApplicantsMax").equals(""))
    {
    	ApplicantsMax = Integer.parseInt(request.getParameter("ApplicantsMax"));
    }
    if(!request.getParameter("PctAdmittedMin").equals(""))
    {
    	PctAdmittedMin= Double.parseDouble(request.getParameter("PctAdmittedMin"));
    }
    if(!request.getParameter("PctAdmittedMax").equals(""))
    {
    	PctAdmittedMax= Double.parseDouble(request.getParameter("PctAdmittedMax"));
    }
    if(!request.getParameter("EnrolledMin").equals(""))
    {
    	EnrolledMin= Double.parseDouble(request.getParameter("EnrolledMin"));
    }
    if(!request.getParameter("EnrolledMax").equals(""))
    {
    	EnrolledMax= Double.parseDouble(request.getParameter("EnrolledMax"));
    }
    if(!request.getParameter("AcademicScaleMin").equals(""))
    {
    	AcademicScaleMin= Integer.parseInt(request.getParameter("AcademicScaleMin"));
    }
    if(!request.getParameter("AcademicScaleMax").equals(""))
    {
    	AcademicScaleMax= Integer.parseInt(request.getParameter("AcademicScaleMax"));
    }
    if(!request.getParameter("socialScaleMin").equals(""))
    {
    	socialScaleMin= Integer.parseInt(request.getParameter("socialScaleMin"));
    }
    if(!request.getParameter("socialScaleMax").equals(""))
    {
    	socialScaleMax= Integer.parseInt(request.getParameter("socialScaleMax"));
    }
    if(!request.getParameter("qualityOfLifeScaleMin").equals(""))
    {
    	qualityOfLifeScaleMin= Integer.parseInt(request.getParameter("qualityOfLifeScaleMin"));
    }
    if(!request.getParameter("qualityOfLifeScaleMax").equals(""))
    {
    	qualityOfLifeScaleMax= Integer.parseInt(request.getParameter("qualityOfLifeScaleMax"));
    	
    }
    System.err.println(qualityOfLifeScaleMax);
    String emphases1 = request.getParameter("emphases1");
    String emphases2 = request.getParameter("emphases2");
    String emphases3 = request.getParameter("emphases3");
    String emphases4 = request.getParameter("emphases4");
    String emphases5 = request.getParameter("emphases5");
    ArrayList<String>emphasesList = new ArrayList<String>();
    if(!emphases1.equals(""))
    	emphasesList.add(emphases1);
    if(!emphases2.equals(""))
    emphasesList.add(emphases2);
    if(!emphases3.equals(""))
    emphasesList.add(emphases3);
    if(!emphases4.equals(""))
    emphasesList.add(emphases4);
    if(!emphases5.equals(""))
    emphasesList.add(emphases5);
    System.err.println(state);
    ArrayList<University> search= sh.searchUni(school,state,location,control,numberOfStudentsMin,numberOfStudentsMax,PctFemaleMin,PctFemaleMax,satVerbalMin,satVerbalMax,satMathMin,satMathMax,ExpensesMin,ExpensesMax,PctAidMin,PctAidMax,ApplicantsMin,ApplicantsMax,PctAdmittedMin,PctAdmittedMax,EnrolledMin,EnrolledMax,AcademicScaleMin,AcademicScaleMax,socialScaleMin,socialScaleMax,qualityOfLifeScaleMin,qualityOfLifeScaleMax,emphasesList);
     for (int i = 0;i<search.size();i++){
       University u = search.get(i); 
       %>        
<tr>
<td style="vertical-align: top;">
<form method="post" action="save.jsp" name="Save">
    <input name="Save" value=Save" type="submit"><br>
    <input name="University" value="<%=u.getName()%>" type="hidden">
</form>
<br>
<td style="vertical-align: top;"><br><%=u.getName()%>
</td>
<td style="vertical-align: top;">
<form method="post" action="viewSearchedSchool.jsp" name="View">
    <input name="View" value="View school" type="submit"><br>
    <input name="University" value="<%=u.getName()%>" type="hidden">
    </form>
<br>
</tr>
  <%}%>
</tbody>
</table>
<br>
</body>
</html>