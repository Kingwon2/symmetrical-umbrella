package com.resemblance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.resemblance.Error.NotCorrectPasswordException;
import com.resemblance.Paging.Criteria;
import com.resemblance.Paging.SearchCriteria;
import com.resemblance.vo.GuestBook;

public class GuestBookDao {
	private JdbcTemplate jdbcTemplate;
	private RowMapper<GuestBook> guestRowMapper = new RowMapper<GuestBook>() {
		@Override
		public GuestBook mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			GuestBook guestBook = new GuestBook(
					rs.getString("password"),
					rs.getString("writer"),
					rs.getString("contents"),
					rs.getInt("celebrityIndex"));
			guestBook.setId(rs.getInt("id"));
			guestBook.setRegDate(rs.getDate("regDate"));
			return guestBook;
		}
	};
	

	public GuestBookDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void insert(GuestBook guestBook) {
		jdbcTemplate.update("insert into guest_book (password, contents, writer, celebrityIndex) "+"values (?, ?, ?, ?)"
	                           ,guestBook.getPassword(),
	                           guestBook.getContents(),
	                           guestBook.getWriter(),
	                           guestBook.getCelebrityIndex());
	}
	
	public void delete(int id) {
		jdbcTemplate.update("delete from guest_book where id = ?", id);
	}
	/* 필요없을듯
	public List<GuestBook> selectByWriter(String writer) {
		List<GuestBook> results = jdbcTemplate.query(
				"select * from GuestBook where writer = ?",
				guestRowMapper,
				writer);
		//return results.isEmpty() ? null : results.get(0);
		return results;
	}
	
	public List<GuestBook> selectByContents(String contents) {
		List<GuestBook> results = jdbcTemplate.query(
				"select * from guest_book where writer = ?",
				guestRowMapper,
				contents);
		//return results.isEmpty() ? null : results.get(0);
		return results;
	}*/

	
	public List<GuestBook> selectAll() {
		List<GuestBook> results = jdbcTemplate.query("select * from GuestBook",
				guestRowMapper);
		return results;
	}
	
	public List<GuestBook> listPaging(Criteria criteria){
		List<GuestBook> results = jdbcTemplate.query(
				"select * from guest_book where id > 0 " +
				"order by regDate desc, writer asc " +
				"limit ?, ?", guestRowMapper, criteria.getPageStart(), criteria.getPerPageNum());
		return results;
	}
	
	public int countAll() {
		Integer count = jdbcTemplate.queryForObject("select count(id) from guest_book where id > 0", Integer.class);
		return count;
	}
	
	public int searchedCount(SearchCriteria searchCriteria) {
		Integer count = jdbcTemplate.queryForObject("select count(id) from guest_book where " +
	                                                searchCriteria.getSearchType() +  " like ?",
				                          Integer.class,"%"+searchCriteria.getKeyword()+"%");
		return count;
	}
	
	public List<GuestBook> searchedlistPaging(SearchCriteria searchCriteria){
		List<GuestBook> results = jdbcTemplate.query(
				"select * from guest_book " +
				"where " + searchCriteria.getSearchType() +  " like ? "+
				"order by regDate desc, writer asc " +
				"limit ?, ?", guestRowMapper, "%"+searchCriteria.getKeyword()+"%",
				searchCriteria.getPageStart(), searchCriteria.getPerPageNum());
		return results;
	}
	
	private String passwordById(int id) {
		String password = jdbcTemplate.queryForObject(
			"select password from guest_book where id = ?", String.class, id);
		return password;
	}
	
	public boolean isCorrectPassword(int id, String password) throws Exception {
		if(passwordById(id).equals(password)) {
			return true;
		}
		else {
			throw new NotCorrectPasswordException();
		}
	}

	
	
	
	

}
