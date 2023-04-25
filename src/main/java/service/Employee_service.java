package service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.Employee_dao;
import dto.Employee;

@Component
public class Employee_service {

	@Autowired
	Employee employee;

	@Autowired
	Employee_dao dao;
	
	public ModelAndView loademployee() {
		ModelAndView andView = new ModelAndView("Insert_data.jsp");
		andView.addObject("employee", employee);
		return andView;
	}

//	@PostMapping("saveemployee")
	public ModelAndView saveemployee(Employee employee, @RequestParam String Doj) {
		employee.setDate(Date.valueOf(Doj));
		dao.save(employee);
		ModelAndView andView = new ModelAndView("index.jsp");
		andView.addObject("msg", "Data added sucessfully");
		return andView;
	}
	
//	@GetMapping("fetchall")
	public ModelAndView fetch() {
		ModelAndView andView = new ModelAndView("Result.jsp");
//		List<Employee> list=;
		andView.addObject("list",dao.fetch());
		
		return andView;
		
	}
	
	public ModelAndView deleteEmployee(@RequestParam int id) {
        dao.delete(id);
        ModelAndView andView = new ModelAndView("index.jsp");
        andView.addObject("msg", "Employee data deleted successfully");
        return andView;
    }
}
