package com.multi.plog;

import com.multi.plog.controller.MainController;
import com.multi.plog.controller.MemberController;
import com.multi.plog.dao.IMemberDAO;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;



@SpringBootApplication
@ComponentScan(basePackageClasses = MainController.class)
@ComponentScan(basePackageClasses = MemberController.class)
@MapperScan(basePackageClasses = IMemberDAO.class)
public class PlogApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlogApplication.class, args);
	}

}
