<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="dao.*" %>
<%
	String uid = request.getParameter("id");
	String frid = request.getParameter("frid");
	out.print((new FriendDAO()).insert(uid, frid));
%>