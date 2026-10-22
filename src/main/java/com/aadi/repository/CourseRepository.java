package com.aadi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.aadi.entity.Student;
@Repository
public interface CourseRepository extends JpaRepository<Student, Integer>{

}
