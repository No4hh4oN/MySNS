<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	String jsonstr = request.getParameter("jsonstr");
	
	UserDAO dao = new UserDAO();
	if(dao.exists(uid)){
		out.print("EX"); //out.print("이미 가입된 회원입니다.");
		return;
	}
	if(dao.insert(uid, jsonstr)){
		session.setAttribute("id", uid);
		out.print("OK"); //out.print("회원 가입이 완료되었습니다.");
	}
	else{
		out.print("ER"); //out.print("회원 가입 중 오류가 발생했습니다.");o
	}
%>