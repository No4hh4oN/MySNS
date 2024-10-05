<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	
	UserDAO dao = new UserDAO();
	if(dao.exists(uid)){
		if(dao.withdraw(uid) == true){
			out.print("OK");
		}
		else{
			out.print("ER");
		}
	}
	else{
		out.print("NA");
	}
	
%>