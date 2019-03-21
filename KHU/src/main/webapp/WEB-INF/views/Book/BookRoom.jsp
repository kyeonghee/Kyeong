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
					style="font-size: 23pt; color: black; font-family: 'Jeju Gothic'">그룹토의실</h1>
				<img src="<%=myctx%>/images/hr.PNG" width="100%">


				<h3 align="left" style="font-family: 'Jeju Gothic'; font-size: 15pt">그룹토의실 현황</h3>

				<!-- -------------대출현황 테이블--------------- -->
				<table class="table table-condensed table-striped">
					<tr>
						<th width="40%" >명칭</th>
						<th width="10%" >최대인원</th>
						<th width="10%" >최소인원</th>
						<th width="40%" >현황</th>
						 
					</tr>
					<%-- <c:if test="${RoomList ne null and not empty RoomList }">
						<c:forEach var="rvo" items="${RoomList}" varStatus="status"> --%>
							<tr>
								<td>a</td>
				 				<td>a</td>
								<td>a</td>
						
								<td><Button class="btn btn-success">16</Button>
									<Button class="btn btn-success">17</Button>
									<Button class="btn btn-success">18</Button>
									<Button class="btn btn-success">19</Button>
									<Button class="btn btn-success">20</Button>
								</td>
							</tr>
					<%-- 	</c:forEach>
					</c:if> --%>

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