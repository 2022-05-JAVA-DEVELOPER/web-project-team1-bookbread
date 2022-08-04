
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.service.OrdersService"%>
<%@page import="com.itwill.bookbread.dto.Orders"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
OrdersService ordersService=new OrdersService();
List<Orders> orderList=ordersService.ordersListAll(sUserId);
%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	function order_delete_all_action(){
		document.order_delete_all_form.action='order_delete_all_action.jsp';
		document.order_delete_all_form.method='POST';
		document.order_delete_all_form.submit();
	}
</script>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book Order List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<!-- Theme Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp"/>
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp"/>
	<!-- include_common_top.jsp end-->
		<div id="content" align="center">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
						
						<td align="center" class=t1><font size=4 color=#000000><b>주문목록</b></font></td>
							</table>
							
							</table> <!--form-->
							<br>
							<form name="f" method="post">
								<table align=center width=80%  border="0" cellpadding="0"
									cellspacing="1" bgcolor="BBBBBB">
									<tr>
										<td width=145 height=25 bgcolor="white" align=center class=t1><font color=#8d8d8d>주문번호</font></td>
										<td width=145 height=25 bgcolor="white" align=center class=t1><font color=#8d8d8d>주문이름</font></td>
										<td width=112 height=25 bgcolor="white" align=center class=t1><font color=#8d8d8d>주문날짜</font></td>
										<td width=136 height=25 bgcolor="white" align=center class=t1><font color=#8d8d8d>주문가격</font></td>
										<td width=80 height=25 bgcolor="white" align=center class=t1><font></font></td>
									</tr>

									<!-- order start -->
									<%
									for (Orders orders : orderList) {
									%>
									<tr>
										<td width=145 height=26 align=center bgcolor="ffffff" class=t1><%=orders.getO_no()%></td>
										<td width=145 height=26 align=center bgcolor="ffffff" class=t1><%=orders.getO_desc()%></td>
										<td width=112 height=26 align=center bgcolor="ffffff" class=t1><%=new SimpleDateFormat("yyyy/MM/dd").format(orders.getO_date())%></td>
										<td width=136 height=26 align=center bgcolor="ffffff" class=t1><%=new DecimalFormat("#,###").format(orders.getO_price())%></td>
										<td width=80 height=26 align=center bgcolor="ffffff" class=t1><a
											href="order_detail.jsp?o_no=<%=orders.getO_no()%>" class=m1>주문상세</a></td>
									</tr>
									<%
									}
									%>
									<!-- order end -->




								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align=center>&nbsp;&nbsp;
									<a href=product_list1.jsp
										class=m1>계속 구경하기</a>
									<a href=order_delete_all_action.jsp
										class=m1>주문전체삭제</a>
									</td>
									
								</tr>
							</table></td>
					</tr>
				</table>
			</div>







	<!-- jQuery Library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- Script -->
	<script src="js/script.js"></script>
	<h1>&nbsp;</h1>
	<div id="footer">
		<!-- include_common_bottom.jsp start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- include_common_bottom.jsp end-->
	</div>
</body>
</html>
