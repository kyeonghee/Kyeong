package com.tis.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import lombok.Data;

@Data
public class PagingVO {

	// 페이징 처리
	private int cpage; // 현재 보여줄 페이지 번호
	private int pageSize = 12; // 한 페이지 당 보여줄 목록 갯수
	private int totalCount; // 총 게시글 수
	private int pageCount; // 페이지수

	// DB에서 레코드를 끊어올 때 사용할 시작과 끝값
	private int start;
	private int end;

	// 페이징 블럭 처리
	private int pagingBlock = 5;
	private int prevBlock;
	private int nextBlock;
 
	// 검색 관련
	private String findType; // 검색유형
	private String findKeyword; // 검색어

	// 페이징 처리를 위해 연산을 수행하는 메소드
	public void init(HttpSession ses) {
		if (pageSize <= 0) {
			pageSize = 12;
		}
		if (pageSize == 12) {
			Integer ps = (Integer) ses.getAttribute("pageSize");
			if (ps == null) {
				pageSize = 12;
			} else {
				pageSize = ps;
			}
		} ///// if()

		// 세션에 pageSize를 저장하자.
		ses.setAttribute("pageSize", pageSize);

		pageCount = (totalCount - 1) / pageSize + 1;
		if (cpage <= 0) {
			cpage = 1;
		}
		if (cpage > pageCount) {
			cpage = pageCount;
		}
		end = cpage * pageSize;
		start = end - pageSize;

		// 페이징 블럭 연산
		prevBlock = (cpage - 1) / pagingBlock * pagingBlock;
		nextBlock = prevBlock + (pagingBlock + 1);

	}/// init()

	/* 페이지 네비게이션 문자열을 반환하는 메소드 */
	public String getPageNavi(String myctx, String loc) {
		// myctx : 컨텍스트명
		// loc : 게시판 목록 경로
		// qStr : Query String
		findType = (findType == null) ? "" : findType;
		try {
			findKeyword = (findKeyword == null) ? "" : URLEncoder.encode(findKeyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
		}

		String qStr = "?pageSize=" + pageSize + "&findType=" + findType + "&findKeyword=" + findKeyword;
		// String의 불변성(immutability) 때문에 StringBuffer/StringBuilder
		// 를 이용하여 문자열을 편집한 후에 String으로 만들어 반환하자.
		StringBuilder buf = new StringBuilder().append("<ul class='pagination'>");
		if (prevBlock > 0) {
			// 이전 5개
			buf.append("<li><a href='" + myctx + "/" + loc + qStr + "&cpage=" + prevBlock + "'>");
			buf.append("Prev");
			buf.append("</a></li>");
		}
		for (int i = prevBlock + 1; i <= nextBlock - 1 && i <= pageCount; i++) {
			String css = "";
			if (i == cpage) {
				css = "class='active'";
			} else {
				css = "";
			}

			buf.append("<li " + css + "><a href='" + myctx + "/" + loc + qStr + "&cpage=" + i + "'>");
			buf.append(i);
			buf.append("</a></li>");
		} // for--------

		if (nextBlock <= pageCount) {
			// 이후 5개
			buf.append("<li><a href='" + myctx + "/" + loc + qStr + "&cpage=" + nextBlock + "'>");
			buf.append("Next");
			buf.append("</a></li>");
		}

		buf.append("</ul>");
		String str = buf.toString();
		// System.out.println(str);
		return str;
	}

}
