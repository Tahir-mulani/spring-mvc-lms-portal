package com.mvc.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.Model.CourseModel;
import com.mvc.Service.CourseService;

@Controller
@RequestMapping("course")
public class CourseController {
	@Autowired
	CourseService courserService;
	
	@PostMapping("/save")
	public String save(CourseModel model,Map<String,String> map)
	{
		 boolean result = courserService.isAddNewCourse(model);
		 if(result)
		 {
			 map.put("msg","Course save Successfully...");
		 }
		 else
		 {
			 map.put("msg","Something else wrong...");
		 }
		 
		 return "addCourse";
	}
	
	@GetMapping("/viewCourse") 
	public String viewCourses(Model model)
	{
		List<CourseModel> list = courserService.getAllCourses();
		 model.addAttribute("courses",list);
		return "viewCourse";  //viewCourse.jsp
	}
}
