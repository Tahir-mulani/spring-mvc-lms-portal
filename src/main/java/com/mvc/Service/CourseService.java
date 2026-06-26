package com.mvc.Service;

import java.util.List;

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
	
	public List<CourseModel> getAllCourses()
	{
		return courseRepository.getAllcourses();
	}
	
	
	
	

}
