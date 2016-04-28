<%@include file="VerifyAdmin.jsp"%>
<%@page language="java" import="project.*"%>
<%  
    String firstName = request.getParameter("FirstName");
    String lastname = request.getParameter("LastName");
    String username = request.getParameter("Username");
    String Password = request.getParameter("Password");
    char type = (request.getParameter("Type")).charAt(0);
    char status = (request.getParameter("Status")).charAt(0);
  if(type == 'u' || type == 'U')
    {
    	Student editS = new Student(firstName,lastname,username,Password,type,status);
    	ah.editStudent(editS);
    	response.sendRedirect("ManageUser.jsp");  
    }
    else if(type == 'a' || type == 'A')
    {
    	Admin editA = new Admin(firstName,lastname,username,Password,type,status);
    	ah.editAdmin(editA);
    	response.sendRedirect("ManageUser.jsp");  
    }
  
  
%>

