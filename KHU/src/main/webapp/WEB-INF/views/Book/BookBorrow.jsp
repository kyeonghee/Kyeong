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
					style="font-size: 23pt; color: black; font-family: 'Jeju Gothic'">대출현황</h1>
				<img src="<%=myctx%>/images/hr.PNG" width="100%">


				<h3 align="left" style="font-family: 'Jeju Gothic'; font-size: 15pt">대출현황
					상태</h3>

				<!-- -------------대출현황 테이블--------------- -->
				<table class="table table-condensed table-striped">
					<tr>
						<th width="10%" style="text-align: center">도서번호</th>
						<th width="40%" style="text-align: center">도서명</th>
						<th width="20%" style="text-align: center">저자</th>
						<th width="15%" style="text-align: center">대출일자</th>
						<th width="15%" style="text-align: center">반납일자</th>
					</tr>
					<!-- -------------------------------------------------------- -->
					<c:if test="${rentalList eq null or empty rentalList }">
						<tr>
							<td colspan="5"><b>대출현황이 없습니다.</b></td>
						</tr>

					</c:if>
					<!-- -------------------------------------------------------- -->
					<c:if test="${rentalList ne null and not empty rentalList }">
						<c:forEach var="rvo" items="${rentalList}" varStatus="status">
							<tr>
								<td style="text-align: center">${rvo.bookNum}</td>
								<td style="text-align: center">${rvo.bookList[0].bookName}</td>
								<td style="text-align: center">${rvo.bookList[0].author}</td>
								<td style="text-align: center">${rvo.rentalDate}</td>
								<td style="text-align: center">${rvo.returnDate}</td>
							</tr>
						</c:forEach>
					</c:if>

					<tr>
						<td colspan="5" class="text-center">
					</tr>
				</table>
			</div>
			<!-- col-md-8 -->
		</div>
	</div>
	<!-- class text-center container -->
</div>
<!-- class text-center section -->


<c:import url="/Book/BookFoot" />