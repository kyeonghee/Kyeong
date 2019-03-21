package com.tis.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import lombok.Data;

@Data
public class PagingVO {

	// ����¡ ó��
	private int cpage; // ���� ������ ������ ��ȣ
	private int pageSize = 12; // �� ������ �� ������ ��� ����
	private int totalCount; // �� �Խñ� ��
	private int pageCount; // ��������

	// DB���� ���ڵ带 ����� �� ����� ���۰� ����
	private int start;
	private int end;

	// ����¡ �� ó��
	private int pagingBlock = 5;
	private int prevBlock;
	private int nextBlock;
 
	// �˻� ����
	private String findType; // �˻�����
	private String findKeyword; // �˻���

	// ����¡ ó���� ���� ������ �����ϴ� �޼ҵ�
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

		// ���ǿ� pageSize�� ��������.
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

		// ����¡ �� ����
		prevBlock = (cpage - 1) / pagingBlock * pagingBlock;
		nextBlock = prevBlock + (pagingBlock + 1);

	}/// init()

	/* ������ �׺���̼� ���ڿ��� ��ȯ�ϴ� �޼ҵ� */
	public String getPageNavi(String myctx, String loc) {
		// myctx : ���ؽ�Ʈ��
		// loc : �Խ��� ��� ���
		// qStr : Query String
		findType = (findType == null) ? "" : findType;
		try {
			findKeyword = (findKeyword == null) ? "" : URLEncoder.encode(findKeyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
		}

		String qStr = "?pageSize=" + pageSize + "&findType=" + findType + "&findKeyword=" + findKeyword;
		// String�� �Һ���(immutability) ������ StringBuffer/StringBuilder
		// �� �̿��Ͽ� ���ڿ��� ������ �Ŀ� String���� ����� ��ȯ����.
		StringBuilder buf = new StringBuilder().append("<ul class='pagination'>");
		if (prevBlock > 0) {
			// ���� 5��
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
			// ���� 5��
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
