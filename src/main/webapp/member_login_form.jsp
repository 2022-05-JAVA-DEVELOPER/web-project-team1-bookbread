
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String msg1=(String)request.getAttribute("msg1");
if(msg1==null)msg1="";
String msg2=(String)request.getAttribute("msg2");
if(msg2==null)msg2="";
Member fMember=(Member)request.getAttribute("fMember");
if(fMember==null)fMember=new Member("","","","","","","","");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function memberCreateForm() {
		location.href = "member_write_form.jsp";
	}
	function login() {
		if (document.f.userId.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			document.f.userId.focus();
			return;
		}
		if (document.f.password.value == "") {
			alert("비밀번호를 입력하십시요.");
			f.password.focus();
			return;
		}
		document.f.action = "member_login_action.jsp";
		document.f.method='POST';
		document.f.submit();
	}
</script>
<title>로그인화면</title>
</head>
<body>
<form method ='post' >
	아이디<input type="text" name="userId" value=<%=fMember.getUserId()%>><br>
	패스워드<input type="text" name="password" value=<%=fMember.getPassword()%>><br>

	<input type="button" value="로그인"	onclick="login()" >
	<input type="button" value="회원가입" onclick="memberCreateForm()">
</form>


</body>
</html>