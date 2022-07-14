package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bean.EmployeeBean;
@Repository
public class EmployeeDao {
		
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public int addEmployee(EmployeeBean employeeBean) {
		return jdbcTemplate.update("insert into employee(ename,eage,eemail,epassword) values(?,?,?,?)",employeeBean.getEmployeeName(),employeeBean.getEmployeeAge(),employeeBean.geteEmail(),employeeBean.getePassword());
	}
	
	private final static class EmployeeMapper implements RowMapper<EmployeeBean>{
		@Override
		public EmployeeBean mapRow(ResultSet rs, int rowNum) throws SQLException {
			EmployeeBean employeeBean = new EmployeeBean();
			employeeBean.seteId(rs.getInt("eId"));
			employeeBean.setEmployeeName(rs.getString("ename"));
			employeeBean.setEmployeeAge(rs.getInt("eage"));
			employeeBean.seteEmail(rs.getString("eemail"));
			employeeBean.setePassword(rs.getString("epassword"));
			return employeeBean;
		}
	}
	public List<EmployeeBean> gellAllEmployees(){
		
		return jdbcTemplate.query("select * from employee", new EmployeeMapper());
		
		
	}
	
	public int deleteEmployee(int eId) {
		return jdbcTemplate.update("delete from employee where eid = ?",eId);
	}

	public EmployeeBean getEmployeeById(int id) {
		return jdbcTemplate.queryForObject("select * from employee where eid = "+id+"", new EmployeeMapper());
	}
	
	public int updateEmployee(EmployeeBean employeeBean) {
		return jdbcTemplate.update("update employee set ename=?,eemail=?,eage=?,epassword=? where eid = ?",employeeBean.getEmployeeName(),employeeBean.geteEmail(),employeeBean.getEmployeeAge(),employeeBean.getePassword(),employeeBean.geteId());
		
	}
	public EmployeeBean loginEmployee(String email,String password) {
		try {

			return jdbcTemplate.queryForObject("select * from employee where eemail = '"+email+"' and epassword = '"+password+"'", new EmployeeMapper());
			}
		catch(EmptyResultDataAccessException e) {
	        throw new RuntimeException("User ID does not exist");
	    }catch(IncorrectResultSizeDataAccessException e) {
	        throw new RuntimeException("More than one users with the same Id .......");
	    }
		
		}
}
