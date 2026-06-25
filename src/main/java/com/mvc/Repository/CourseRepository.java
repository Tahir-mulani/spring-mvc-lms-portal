package com.mvc.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import com.mvc.Model.CourseModel;

@Repository("courseRepository")
public class CourseRepository {
	
	@Autowired
	JdbcTemplate template;
	
	public boolean isAddNewcourse(CourseModel model)
	{
		int value = template.update("insert into course values('0',?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				 ps.setString(1,model.getCourse());
				
			}
			
		});
		
		return value>0? true:false;	
	}
	
	

}
