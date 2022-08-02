package com.itwill.bookbread.sql;

public class ProductSQL {

	// 모든 도서 리스트
	public final static String PRODUCT_LIST = "select * from product";

	// 도서이름으로 도서찾기
	public final static String PRODUCT_BY_NAME = "select * from product where p_name=?";

	// 저자이름으로 도서찾기
	public final static String PRODUCT_BY_AUTHOR = "select * from product where p_author=?";

	// 출판사이름으로 도서찾기
	public final static String PRODUCT_BY_PUBLISHER = "select * from product where p_publisher=?";

	// 도서타입으로 도서찾기
	public final static String PRODUCT_BY_TYPE = "select * from product where type_no=?";

	// 도서번호로 도서정보찾기
	public final static String PRODUCT_BY_NO = "select * from product where p_no=?";
	
	// 도서가격 수정
	public final static String PRODUCT_UPDATE_PRICE = "update product set p_price=? where p_no=?";

	// 도서추가
	public final static String PRODUCT_INSERT = "insert into product (p_no, p_name, p_author, p_publisher, p_publish_date, p_price, p_image, p_detail, type_no) values (product_p_no_SEQ.nextval,?,?,?,?,?,null,?,?)";

	// 도서삭제
	public final static String PRODUCT_DELETE = "delete from product where p_no=?";

}
