<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page import = "com.javaex.dao.PhoneDao" %>

<%
	PhoneDao phoneDao = new PhoneDao();	

	//1.파라미터 꺼내기
	int personId = Integer.parseInt(request.getParameter("id"));
	System.out.println(personId);
	
	
	//dao 에서 한사람(id)의 정보 가져오기
	PersonVo personVo = phoneDao.getPerson(personId);
	System.out.println(personVo.toString());
	
	//person+html 작성
	
	//리다이렉트(리스트요청)
	//response.sendRedirect("./list.jsp");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 수정</h1>
	<p>
		전화번호 수정 화면입니다. <br>
		아래 항목을 기입하고 "수정" 버튼을 클릭하세요.
	</p>
	
	<form action="./update.jsp" method="get">
		<label>이름(name): </label><input type="text" name="name" value=" <%=personVo.getName() %>"> <br>
		<label>핸드폰(hp): </label><input type="text" name="hp" value="<%=personVo.getHp() %>"> <br>
		<label>회사(company): </label><input type="text" name="company" value="<%=personVo.getCompany() %>"> <br>
		<input type="text" name="id" value="<%=personVo.getPersonId() %>"><br>
		<button type="submit">수정</button>
	</form>
	
	<a href="./list.jsp">리스트 바로가기</a>

</body>
</html>