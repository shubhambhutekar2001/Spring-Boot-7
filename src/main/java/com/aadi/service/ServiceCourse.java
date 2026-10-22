package com.aadi.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aadi.entity.Student;
import com.aadi.repository.CourseRepository;

@Service

public class ServiceCourse {
	@Autowired
	CourseRepository cr;
	public String save(Student s)
	{
		
		if(s.getCoursename().equalsIgnoreCase("Java Full Stack Developer"))
		{
			s.setFee(25000.00);
		}
		else if(s.getCoursename().equalsIgnoreCase("Python Full Stack Developer"))
		{
			s.setFee(35000.00);
		}
		else
		{
			s.setFee(30000.0);
		}
		cr.save(s);
		return "erollement sucsesfully";
	}
	public Student findbyid(int id)
	{
		Optional<Student>op=cr.findById(id);
		Student s=op.get();
		return s;
	}
	public List<Student> getallStudent()
	{
		List<Student> student=cr.findAll();
		return student;
	}
	public void deletestudent(int id)
	{
		cr.deleteById(id);
		
	}
	public Student update(int id)
	{
		Optional<Student> op=cr.findById(id);
		return op.get();
	}


}
