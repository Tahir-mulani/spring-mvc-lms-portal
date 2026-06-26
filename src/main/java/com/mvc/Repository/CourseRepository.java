package com.mvc.Repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mvc.Model.CourseModel;

@Repository("courseRepository")
public class CourseRepository {

	@Autowired
	JdbcTemplate template;
	List<CourseModel> list;

	public boolean isAddNewcourse(CourseModel model) {
		int value = template.update("insert into course values('0',?)", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getCourse());

			}

		});

		return value > 0 ? true : false;
	}

	public List<CourseModel> getAllcourses() {
		
		list = template.query("SELECT*FROM course", new RowMapper<CourseModel>(){
			 @Override
	            public CourseModel mapRow(ResultSet rs, int rowNum) throws SQLException {

	          
	                CourseModel courseModel = new CourseModel(rs.getInt(1), rs.getString(2));

	                return courseModel;
	            }	
		});return list;
}

}
