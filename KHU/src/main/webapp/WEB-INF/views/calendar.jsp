<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.tis.calendar.MyCalendar"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<style type="text/css">
a:LINK {
	color: white;
	text-decoration: none;
}

a:VISITED {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

a:HOVER {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

a:ACTIVE {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

tr {
	height: 50px;
}

th#title {
	font-size: 30px;
}

td.sunday {
	font-size: 15px;
	text-align: right;
	width: 100px;
	vertical-align: top;
	font-weight: bold;
	color: red;
}

td.saturday {
	font-size: 15px;
	text-align: right;
	width: 100px;
	vertical-align: top;
	font-weight: bold;
	color: blue;
}

/* td.saturday.hday{
	background: silver;
	vertical-align: bottom;
	display: table;
} */
/* .cell{
	display: table-cell;
	vertical-align: bottom;
	background: orange;
	height:100px;
} */
td.etcday {
	font-size: 15px;
	text-align: right;
	width: 100px;
	vertical-align: top;
	font-weight: bold;
}

td.before {
	font-size: 12px;
	text-align: right;
	width: 100px;
	vertical-align: top;
}

td#sun {
	font-size: 20px;
	text-align: center;
	width: 100px;
	color: red;
	font-weight: bold;
}

td#sat {
	font-size: 20px;
	text-align: center;
	width: 100px;
	color: blue;
	font-weight: bold;
}

td.etc {
	font-size: 20px;
	text-align: center;
	width: 100px;
	font-weight: bold;
}

div.hday {
	font-size: 10px;
	color: red;
	display: table;
}

td.saturday>button {
	vertical-align: middle;
}

div.hhday {
	font-size: 15px;
	color: red;
}
</style>
<%
	Calendar calendar = Calendar.getInstance();
	int year = calendar.get(Calendar.YEAR);
	int month = calendar.get(Calendar.MONTH) + 1;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월");

	//이전 페이지에서 넘어오는 년,월 받기
	try {
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
	} catch (Exception e) {
	}

	//넘겨 받은 월이 0보다 작거나 같다면 전년도 12월로
	if (month <= 0) {
		year--;
		month = 12;

		//넘겨 받은 월이 13보다 크거나 같다면 다음년도 1월로
	} else if (month >= 13) {
		year++;
		month = 1;
	}
%>
<div class="section">
	<div class="container">
		<table id="c" class="table table-bordered"
			style="border: 1px solid silver; height: 700px; width: 70%; margin-left: 188px">
			<tr style="background-color: darkred">
				<th colspan="7" id="title" style="text-align: center; color: white">
					<a href="?year=<%=year%>&month=<%=month - 1%>#logo">◁</a> <%=String.format("%4d.%02d", year, month)%>
					<a href="?year=<%=year%>&month=<%=month + 1%>#logo">▷</a>
				</th>
			</tr>
			<tr>
				<td id="sun">일</td>
				<td class="etc">월</td>
				<td class="etc">화</td>
				<td class="etc">수</td>
				<td class="etc">목</td>
				<td class="etc">금</td>
				<td id="sat">토</td>
			</tr>
			<tr>
				<%
					int start = MyCalendar.weekDay(year, month, 1);
					//	1일이 출력될 요일의 위치를 맞추기 위해 1일의 요일만큼 반복하며 빈 칸을 출력한다.

					//	1일이 출력될 요일의 위치를 맞추기 위해 1일의 요일만큼 반복하며 전달의 날짜를 출력한다. 
					int count = 0;
					if (month == 1) {
						//	달력을 출력할 달이 1월이면 전달은 전년도 12월이므로 전년도 12월의 마지막 날짜와 연산을 한다.
						count = MyCalendar.lastDay(year - 1, 12) - start + 1;
					} else {
						//	달력을 출력할 달이 1월이 아니면 전달의 마지막 날짜와 연산을 한다.
						count = MyCalendar.lastDay(year, month - 1) - start + 1; //전달월을 가져와야하므로 -1
					}
					for (int i = 1; i <= start; i++) {
						out.println("<td class ='before'><sup>");
						out.println((month == 1 ? 12 : month - 1) + "/" + count++);
						out.println("</sup></td>");
					}

					//	1부터 달력을 출력할 달의 마지막 날짜까지 반복하며 날짜를 출력한다.

					for (int i = 1; i <= MyCalendar.lastDay(year, month); i++) {
						start = MyCalendar.weekDay(year, month, i); // 출력한 날짜의 요일
						switch (start) {
						case 0:
							out.println("<td class ='sunday'>");
							break;
						case 6:
							out.println("<td class ='saturday'>");
							//out.println("<div class='hday' style='color:white'>");
							//out.println("<div class='cell'>");
							//out.println("<button class='btn btn-danger btn-xs'>휴관일</button></div></div>");
							break;
						default:
							out.println("<td class ='etcday'>");
						}

						if (month == 1 && i == 1) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>신정</div>");
						} else if (month == 3 && i == 1) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>삼일절</div>");
						} else if (month == 5 && i == 5) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>어린이날</div>");
						} else if (month == 6 && i == 15) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>현충일</div>");
						} else if (month == 8 && i == 15) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>광복절</div>");
						} else if (month == 10 && i == 3) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>개천절</div>");
						} else if (month == 10 && i == 9) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>한글날</div>");
						} else if (month == 12 && i == 25) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>크리스마스</div>");
						} else if (year == 2016 && month == 9 && (i == 14 || i == 15 || i == 16)) {
							out.println("<div class='hhday'>" + i + "</div>");
							out.println("<div class='hday'>추석연휴</div>");
						} else if (month == 2 && i == 27) {
							out.println("<div class='hhday' style='color:black'>" + i + "</div>");
							out.println(
									"<div class='hday' style='color:white'><button class='btn btn-primary btn-xs'>+예약신청</button></div>");
						} else if (month == 2 && i == 28) {
							out.println("<div class='hhday' style='color:black'>" + i + "</div>");
							out.println(
						"<div class='hday' style='color:white'><button class='btn btn-primary btn-xs'>+예약신청</button></div>");
						} else {
							out.println(i);
						}
						switch (start) {
						case 0:

							break;
						case 6:
							out.println("<div class='hday' style='color:white'>");
							out.println("<div class='cell'>");
							out.println("<button class='btn btn-danger btn-xs'>휴관일</button></div></div>");
							break;
						default:

						}

						out.println("</td></td>");
						//	출력한 날짜가 토요일이고 그 달의 마지막 날짜가 아니면 줄을 바꾼다.
						if (start == 6 && i != MyCalendar.lastDay(year, month)) {
							out.println("</tr><tr>");
						}
					}
					//	마지막 날짜를 출력한 다음 칸부터 다음달의 날짜를 출력한다.
					count = 1;
					for (int i = start + 1; i < 7; i++) { //이 start는  start = MyCalendar.weekDay(year, month, i);이걸 집어넣은 start임
						out.println("<td class ='before'><sup>");
						out.println((month == 12 ? 1 : month + 1) + "/" + count++);
						out.println("</sup></td>");
					}
				%>
			</tr>
		</table>
		<form action="?" method="post"
			style="text-align: center; margin-top: 20px">
			<select name="year" style="font-size: 15pt">
				<%
					for (int i = 1900; i <= 2100; i++) {
						out.println("<option ");
						if (i == calendar.get(Calendar.YEAR)) {
							out.println("selected='selected'");
						}
						out.println(">");
						out.println(i);
						out.println("</option>");
					}
				%>
			</select>년 <select name="month" style="font-size: 15pt">
				<%
					for (int i = 1; i <= 12; i++) {
						out.println("<option ");
						if (i == calendar.get(Calendar.MONTH) + 1) {
							out.println("selected='selected'");
						}
						out.println(">");
						out.println(i);
						out.println("</option>");
					}
				%>
			</select>월
			<button type="submit" class="btn btn-gray">달력보기</button>
		</form>
	</div>
</div>



