<%@include file="VerifyAdmin.jsp"%>
<%  
    String s = request.getParameter("User");
	User u = ah.findUser(s);
    ah.deactivateUser(u);
    response.sendRedirect("AdminMenu.jsp");
%>