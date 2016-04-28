<%@include file="VerifyStudent.jsp"%>
<%  
    String university = request.getParameter("University");
    sh.saveUni(university);
    response.sendRedirect("SavedSchool.jsp");      
%>