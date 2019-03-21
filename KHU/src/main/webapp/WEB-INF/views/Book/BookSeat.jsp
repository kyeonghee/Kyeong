<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String myctx = request.getContextPath();
%>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
</style>
<c:import url="/Book/BookTop" />
<div class="text-center section">
	<div class="text-center container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h1 align="left"
					style="font-size: 23pt; color: dimgray; font-family: 'Jeju Gothic'">열람실 예약</h1>
			<table class="table table-condensed">
				<tr class="danger">
					<th width="5%">명칭</th>
					<th width="10%">전체</th>
					<th width="30%">잔여좌석</th>
					<th width="15%">사용율</th>
				</tr>
			</table>
			</div>
			<!-- col-md-8 -->
			<div class="col-md-4"> 
			<c:import url="/calendar"/>
			</div>
		</div>
	</div>
	<!-- class text-center container -->
</div>
<!-- class text-center section -->


<c:import url="/Book/BookFoot" />