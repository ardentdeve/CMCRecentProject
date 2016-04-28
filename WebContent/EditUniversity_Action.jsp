<%@include file="VerifyAdmin.jsp"%>
<%@page language="java" import="project.*"%>
<%  
     int value = 0;
    String School = request.getParameter("School");
    String State = request.getParameter("State");
    String Location= request.getParameter("Location");
    if(!(Location.toUpperCase().equals("URBAN")) || (Location.toUpperCase().equals("SUBURBAN"))|| (Location.toUpperCase().equals("SMALL-CITY"))||(Location.toUpperCase().equals("-1")))
    {
    	value = 3;
    }
    String Control= request.getParameter("Control");
    if(!(Control.toUpperCase().equals("PRIVATE")) || (Control.toUpperCase().equals("STATE"))|| (Control.toUpperCase().equals("CITY"))||(Control.toUpperCase().equals("-1")))
    {
    	value = 4;
    }
    int numberOfStudents = Integer.parseInt(request.getParameter("NoStudents"));
    double PctFemale= Double.parseDouble(request.getParameter("PctFemale"));
    if(PctFemale<0 || PctFemale >100)
    {
       value = 6;
    }
    double satVerbal = Double.parseDouble(request.getParameter("SatVerbal"));
    if(satVerbal<0 || satVerbal>800)
    {
    	value = 7;
    }
    double satMath = Double.parseDouble(request.getParameter("SatMath"));
    if(satMath<0 || satMath>800)
    {
    	value =8;
    }
	double Expenses= Double.parseDouble(request.getParameter("Expenses"));
	double PctAid= Double.parseDouble(request.getParameter("FinancialAid"));
	if(PctAid<0 || PctAid>100)
    {
    	value = 10;
    }
	int Applicants= Integer.parseInt(request.getParameter("NoApplicants"));
	double PctAdmitted= Double.parseDouble(request.getParameter("PctAdmitted"));
	if(PctAdmitted<0 || PctAdmitted>100)
    {
    	value = 12;
    }
	double PctEnrolled= Double.parseDouble(request.getParameter("PctEnrolled"));
	if(PctEnrolled<0 || PctEnrolled>100)
    {
    	value = 13;
    }
	int AcademicScale= Integer.parseInt(request.getParameter("PctAcademicScale"));
	if(AcademicScale<1 || AcademicScale>5)
    {
    	value = 14;
    }
	int socialScale= Integer.parseInt(request.getParameter("SocialScale"));
	if(socialScale<1 || socialScale>5)
    {
    	value = 15;
    }
    int qualityOfLifeScale= Integer.parseInt(request.getParameter("QualityOfLifeScale"));
    if(qualityOfLifeScale<1 || qualityOfLifeScale>5)
    {
    	value = 16;
    }
    String emphases1 = request.getParameter("emphases1");
    String emphases2 = request.getParameter("emphases2");
    String emphases3 = request.getParameter("emphases3");
    String emphases4 = request.getParameter("emphases4");
    String emphases5 = request.getParameter("emphases5");
    ArrayList<String>emphasis = new ArrayList<String>();
    emphasis.add(emphases1);
    emphasis.add(emphases2);
    emphasis.add(emphases3);
    emphasis.add(emphases4);
    emphasis.add(emphases5);
    ArrayList<String>oldEmphasis = ah.getEmphasis(School);
    System.err.println(value);
    
    if(value!= 0)
    {
    	response.sendRedirect("EditUniversity.jsp?Error="+ value + "&University="+ request.getParameter("University"));
    }
    else
    {
    
   University editS = new University(School,State,Location,Control,numberOfStudents,PctFemale,satVerbal,satMath,Expenses,PctAid,Applicants,PctAdmitted,PctEnrolled,AcademicScale,socialScale,qualityOfLifeScale,emphasis);  
   ah.editUniversities(editS);
   ah.addUniversityEmphasis(editS,emphases1);
   ah.addUniversityEmphasis(editS,emphases2);
   ah.addUniversityEmphasis(editS,emphases3);
   ah.addUniversityEmphasis(editS,emphases4);
   ah.addUniversityEmphasis(editS,emphases5);
    response.sendRedirect("ManageUniversity.jsp");      
    }
%>