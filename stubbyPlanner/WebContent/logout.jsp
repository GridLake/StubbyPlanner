<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    session.invalidate();
	HttpSession ses = request.getSession(false);
	if(ses==null){
%>
	<script>
	location.href = "/stubbyPlanner/webContent/common/login.jsp";		
	</script>
<%
	}
%>

