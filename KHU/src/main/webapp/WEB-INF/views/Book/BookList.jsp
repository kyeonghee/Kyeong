<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String myctx = request.getContextPath();
%>
<c:import url="/Book/BookTop" />
<script type="text/javascript">
	var check = function() {
		if (!sf.findType.value) {
			alert('검색 유형을 선택하세요');
			sf.findType.focus();
			return false;
		}
		if (!sf.findKeyword.value) {
			alert('검색어를 입력하세요');
			sf.findKeyword.focus();
			return false;
		}
		sf.submit();
	}
</script>
<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 align="left"
					style="font-size: 23pt; color: black; font-family: 'Jeju Gothic'">도서조회</h1>
				<img src="../images/hr.PNG" width="100%" style="margin-bottom: 20px">
			</div>
			<!-- 검색 폼 시작--------------------- -->
			<form name="sf" action="BookList" onsubmit="return check()"
				method="post">
				<div class="col-md-2 col-md-offset-1">
					<select name="findType" class="form-control">
						<option value="">::검색 유형::</option>
						<option value="1">도 서 명</option>
						<option value="2">저 자</option>

					</select>
				</div>
				<div class="col-md-7">
					<input type="text" name="findKeyword" class="form-control"
						placeholder="검색어를 입력하세요">
				</div>
				<div class="col-md-2">
					<button type="button" onclick="check()" class="btn btn-danger">검색</button>
				</div>
			</form>
			<c:if test="${bookList==null || empty bookList}">
				<div class="col-md-12 text-center">
					<h3 style="font-size: 20pt">도서 준비중입니다</h3>
				</div>
			</c:if>
			<!-- -------------------------------------------------------- -->
			<c:if test="${bookList !=null && not empty bookList}">
				<c:forEach var="bvo" items="${bookList}" varStatus="status">
					<div class="col-md-2 text-center" style="margin-top: 50px">
						<a href="<%=myctx%>/Book/BookInfo?bookNum=${bvo.bookNum}"><img
							src="../book_images/${bvo.bookImage}" class="img-responsive"
							style="width: 40%; margin: auto;"></a>
						<h4>${bvo.bookName}</h4>
						<h5>${bvo.author}</h5>
					</div>
					<!-- col-md-2 end -->
					<c:if test="${status.count mod 6==0 }">
						<div class="row">
							<!-- 줄바꿈,기존행을 닫고 새로운행을 시작 -->
						</div>
					</c:if>
				</c:forEach>
			</c:if>
			<div class="text-center">
				<table style="margin:auto; width:90%">
					<tr>
						<td class="text-center" >${pageNavi}<br>
						총게시물수: <span>${paging.totalCount}개</span>
							<span style="font-weight: bold">${paging.cpage}</span>
							/${paging.pageCount} pages
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- row -->
	</div>
	<!-- container -->
</div>
<!-- section -->
<c:import url="/Book/BookFoot" />