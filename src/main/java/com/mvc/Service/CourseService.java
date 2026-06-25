package com.mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Model.CourseModel;
import com.mvc.Repository.CourseRepository;

@Service("courseService")
public class CourseService {
	
	@Autowired
	CourseRepository courseRepository;
	
	public boolean isAddNewCourse(CourseModel model)
	{
		return courseRepository.isAddNewcourse(model);
	}
 
	
	
	
	

}
