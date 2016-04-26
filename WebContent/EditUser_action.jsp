<%@include file="VerifyAdmin.jsp"%>
<%@page language="java" import="project.*"%>
<%  
    String firstName = request.getParameter("FirstName");
    String lastname = request.getParameter("LastName");
    String username = request.getParameter("Username");
    String Password = request.getParameter("Password");
    char type = (request.getParameter("Type")).charAt(0);
    char status = (request.getParameter("Status")).charAt(0);
    if(type=='u')
    {
    	Student editS = new Student(firstName,lastname,username,Password,status);
    	ah.editStudent(editS);
    	response.sendRedirect("AdminMenu.jsp");  
    }
    else if(type =='a')
    {
    	Admin editA = new Admin(firstName,lastname,username,Password,status);
    	ah.editAdmin(editA);
    	response.sendRedirect("AdminMenu.jsp");  
    }
  
  
%>

