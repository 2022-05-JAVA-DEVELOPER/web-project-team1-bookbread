package com.itwill.bookbread.service;

import java.util.List;

import com.itwill.bookbread.dao.ProductDao;
import com.itwill.bookbread.dto.Product;

public class ProductService {

	private ProductDao productdao;
	
	public ProductService() throws Exception {
		
		productdao = new ProductDao();
		
	}
	
	// 도서 전체 리스트찾기
	public List<Product> selectAll() throws Exception{
		return productdao.selectAll();
	}
	
	// 도서이름으로 리스트찾기
	public List<Product> selectListName(String p_name) throws Exception {
		return productdao.selectListName(p_name);
	}
	
	// 저자이름으로 리스트찾기
	public List<Product> selectListAuthor(String p_author)throws Exception {
		return productdao.selectListAuthor(p_author);
	}
	
	// 출판사이름으로 리스트찾기
	public List<Product> selectListPublisher(String p_publisher)throws Exception {
		return productdao.selectListPublisher(p_publisher);
	}
	
	// 도서타입으로 리스트찾기
	public List<Product> selectListType(String type_no)throws Exception {
		return productdao.selectListType(type_no);
	}
	
	// 도서이름으로 찾기
	public Product selectByName(String p_name) throws Exception {
		return productdao.selectByName(p_name);
	}
	
	// 저자이름으로 찾기
	public Product selectByauthor(String p_author) throws Exception {
		return productdao.selectByauthor(p_author);
	}
	
	// 출판사이름으로 찾기
	public Product selectBypublisher(String p_publisher) throws Exception {
		return productdao.selectBypublisher(p_publisher);
	}
	
	// 도서타입으로 찾기
	public Product selectByTYPE(int type_no) throws Exception {
		return productdao.selectByTYPE(type_no);
	}
	
	// 도서 번호로 찾기
	public Product selectByNO(int p_no) throws Exception {
		return productdao.selectByNO(p_no);
	}
	
	// 도서추가
	public int InsertProduct(Product product) throws Exception {
		return productdao.InsertProduct(product);
	}
	
	// 도서가격수정
	public int updatePrice(Product product)throws Exception {
		return productdao.updatePrice(product);
	}
	
	// 도서삭제
	public int deleteByProductNo(int p_no)throws Exception {
		return productdao.deleteByProductNo(p_no);
	}
}
