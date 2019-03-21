<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String myctx = request.getContextPath();
%>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
</style>
<c:import url="/Dorm/DormTop"/>

<div class="section">
	<div class="container">
		<div class="row">

			<div class="col-md-12" style="margin-top: 30px">
				<div class="col-md-6" align="center" style="margin-top: 15px">
					<a href="#SignModal" data-toggle="modal"><img
						src="../../images/기숙사신청.png" style="width: 20%"></a>
					<p style="font-family: 'Jeju Gothic'; margin-top: 10px">기숙사 신청</p>
				</div>
				<div class="col-md-6" align="center" style="margin-top: 15px">
					<a href="#CheckModal" data-toggle="modal"><img
						src="../../images/기숙사조회.PNG" style="width: 20%"></a>
					<p style="font-family: 'Jeju Gothic'; margin-top: 10px">기숙사 조회</p>
				</div>
			</div>
		</div>
	</div>
</div>

<c:import url="/Dorm/DormFoot" />