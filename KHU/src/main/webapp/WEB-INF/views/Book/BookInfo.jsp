<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
			<div class="col-md-12">
				<h1 align="left"
					style="font-size: 23pt; color: black; font-family: 'Jeju Gothic'">상세정보</h1>
			</div>
			<table class="table table-condensed">
				<tr>
					<td rowspan="6" style="text-align: center; width: 20%;"><img
						src="../book_images/${bookInfo[0].bookImage}"
						style="width: 40%; margin-top: 20px"></td>
					<td>도서번호 : ${bookInfo[0].bookNum}</td>
				</tr>
				<tr>
					<td>도 서 명 : ${bookInfo[0].bookName}</td>
				</tr>
				<tr>
					<td>저 자 : ${bookInfo[0].author}</td>
				</tr>
				<tr>
					<td>출 판 사 : ${bookInfo[0].publisher}</td>
				</tr>
				<tr>
					<td>출 판 날 짜 : <fmt:parseDate
							value="${bookInfo[0].publishDate}" var="time" pattern="yyyyMMdd" />
						<fmt:formatDate value="${time}" pattern="yyyy.MM.dd" /></td>
				</tr>
				<tr>
					<td>대 여 상 태 : <c:if test="${bookInfo[0].bookCheck eq 0}">대여가능</c:if>
						<c:if test="${bookInfo[0].bookCheck eq 1}">대여중</c:if>
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
			<!-- 로그인 하지 않았을 때 -->
			<c:if test="${loginUser eq null}">
				<c:if test="${bookInfo[0].bookCheck eq 0 }">
					<button class="btn bg-dark" href="#BModal" data-toggle="modal">대여신청</button>
				</c:if>
				<button type="button" class="btn bg-dark" onclick="history.go(-1)">돌아가기</button>
			</c:if>
			<!-- 로그인 했을 때 -->
			<c:if test="${loginUser ne null }">
				<c:if test="${bookInfo[0].bookCheck eq 0 }">
					<button class="btn bg-dark" data-target="#myModal2"
						data-toggle="modal">대여신청</button>
					<button type="button" class="btn bg-dark" onclick="history.go(-1)">돌아가기</button>
				</c:if>
				<c:if test="${bookInfo[0].bookCheck eq 1 and rental ne null}">
					<form
						action="${pageContext.request.contextPath}/user/Book/BookBorrow2"
						method="POST">
						<input type="hidden" name="bookNum" value="${bookInfo[0].bookNum}">
						<input type="hidden" name="studentNum"
							value="${loginUser.studentNum}">
						<button class="btn bg-dark" type="submit">반납하기</button>

						<button type="button" class="btn bg-dark" onclick="history.go(-1)">돌아가기</button>
					</form>
				</c:if>
				<c:if test="${bookInfo[0].bookCheck eq 1 and rental eq null}">
					<button type="button" class="btn bg-dark" onclick="history.go(-1)">돌아가기</button>
				</c:if>
			</c:if>
		</div>
	</div>
	<!-- class text-center container -->
</div>
<!-- class text-center section -->
<%@include file="BookRental.jsp"%>
<c:import url="/Book/BookFoot" />