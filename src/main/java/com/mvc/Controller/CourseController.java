package com.mvc.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.mvc.Model.CourseModel;
import com.mvc.Service.CourseService;

@Controller
@RequestMapping("course")
public class CourseController {
	@Autowired
	CourseService courseService;
	
	@GetMapping("/addNewCourse")
	public String addNewCourse() {

		return "addCourse";

	}
	
	@PostMapping("/save")
	public String save(CourseModel model,Map<String,String> map)
	{
		 boolean result = courseService.isAddNewCourse(model);
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
		List<CourseModel> list = courseService.getAllCourses();
		 model.addAttribute("courses",list);
		return "viewCourse";  //viewCourse.jsp
	}
	
	@GetMapping("/delete")
	public String deleteCourse(@RequestParam("id")int id)
	{
		courseService.deleteCourseById(id);
		
		return "redirect:/course/viewCourse";
	}
	
	@GetMapping("/update")
	public String updateCourseName(@RequestParam("id") int id,@RequestParam("course") String course,Model model)
	{
		CourseModel c = new CourseModel(id,course);
		model.addAttribute("courseObj",c);
		return "updateCourse";
		
	}
	
	@PostMapping("/edit")
	public RedirectView updateCourse(CourseModel model) {
		courseService.updateCourseName(model);
	    RedirectView view = new RedirectView("viewCourse");
	    return view;
	}
}
