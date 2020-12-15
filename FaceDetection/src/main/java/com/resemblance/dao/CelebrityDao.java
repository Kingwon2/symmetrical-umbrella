package com.resemblance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.resemblance.Paging.Criteria;
import com.resemblance.vo.Celebrity;

public class CelebrityDao {
	private JdbcTemplate jdbcTemplate;
	private RowMapper<Celebrity> celRowMapper = new RowMapper<Celebrity>() {
		@Override
		public Celebrity mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Celebrity celebrity = new Celebrity(
					rs.getString("name"),
					rs.getString("fileName"),
					rs.getString("grade"));
			celebrity.setId(rs.getInt("id"));
			return celebrity;
		}
	};
	

	public CelebrityDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void insert(Celebrity celebrity) {
		jdbcTemplate.update("insert into celebrity (name, fileName, grade) "+
				"values (?, ?, ?)",
				celebrity.getName(), celebrity.getFileName(), celebrity.getGrade());
	}
	
	public Celebrity selectById(int id) {
		List<Celebrity> results = jdbcTemplate.query(
				"select * from celebrity where id = ?",
				celRowMapper,
				id);

		return results.isEmpty() ? null : results.get(0);
	}
	
	public List<Celebrity> selectAll() {
		List<Celebrity> results = jdbcTemplate.query("select * from celebrity",
				celRowMapper);
		return results;
	}
	
	public List<Celebrity> listPaging(Criteria criteria){
		List<Celebrity> results = jdbcTemplate.query(
				"select * from celebrity where id > 0 " +
				"order by id desc, name desc " +
				"limit ?, ?", celRowMapper, criteria.getPageStart(), criteria.getPerPageNum());
		return results;
	}
	
	public int count() {
		Integer count = jdbcTemplate.queryForObject("select count(id) from celebrity where id > 0", Integer.class);
		return count;
	}
	
	
	
	
	
}
