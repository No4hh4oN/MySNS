<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.*" %>
<%
    // 클라이언트에서 전달한 글 번호
    int feedNo = Integer.parseInt(request.getParameter("no"));

    // DAO를 사용하여 해당 번호의 Feed의 자세한 내용을 가져옴
    FeedDAO feedDAO = new FeedDAO();
    String feedDetails = feedDAO.getFeedDetails(feedNo);

    // 자세한 내용을 클라이언트로 반환
    out.print(feedDetails);
%>