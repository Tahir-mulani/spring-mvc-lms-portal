package com.mvc.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.Model.CourseModel;
import com.mvc.Model.Login;

@Controller
public class HomeController {

	@RequestMapping("/") // method = RequestMethod.GET
	public String showHomePage() {
		return "index";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/validate")
	public String saveUser(Login login, Map<String, String> map) {
		if (login.getUserName().equals("admin") && login.getPass().equals("admin")) {
			map.put("user", "admin");
			return "adminDashBoard";
		} else {
			map.put("msg", "Something went wrong..!");

		}
		return "login";
	}

	@GetMapping("/addNewCourse")
	public String addNewCourse() {

		return "addCourse";

	}
	
	@GetMapping("/viewCourse")
	public String viewCourse() {
		return "viewCourse";
	}

}
