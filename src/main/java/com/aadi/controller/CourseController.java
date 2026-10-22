package com.aadi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aadi.entity.Student;
import com.aadi.service.ServiceCourse;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CourseController {
	@Autowired
	ServiceCourse sc;
	@GetMapping("/enrollment")
	public String EnrollementForm(Model model)
	{
		Student student=new Student();
		
		
		model.addAttribute("student", student);
		return "enroll";
	}
	@PostMapping("/save")
	public String save(Student s ,Model  m)
	{
		
		
		
	
		String msg=sc.save(s);
		m.addAttribute("msg",msg);
		System.out.println(s);
		return "redirect:/dashboard/ "+ s.getId();
	}
	@GetMapping("/dashboard/{Id}")
	public String dashboard(@PathVariable int Id ,Model model)
	{
		Student s=sc.findbyid(Id);
		model.addAttribute("student", s);
		return "dashboard";
	}
	@GetMapping("/home")
	
	
	public String home()
	{
		return "home";
	}
	@GetMapping("/courses")
	public String courses()
	{
		return "courses";
	}
	@GetMapping("/allstudent")
	public String getallStudent(Model model)
	{
		List<Student> student=sc.getallStudent();
		model.addAttribute("student" ,student);
		return "student";
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id)
	{
		sc.deletestudent(id);
		return "redirect:/allstudent";
	}
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id,Model model)
	
	{
		Student s= sc.findbyid(id);
		model.addAttribute("student",s);
		return "update";
		
	}
	@PostMapping("/updateRecord")
	public String upadteedit( Student s)
	{
	       sc.save(s);
	       return "redirect:/allstudent";
	}

}
