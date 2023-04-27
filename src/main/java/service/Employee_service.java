package service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
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
		ModelAndView andView = new ModelAndView();
		List<Employee> list = dao.fetch();
		if (list.isEmpty()) {
//		andView.addObject("list",dao.fetch());
			andView.addObject("msg", "No Data Found");
			andView.setViewName("index.jsp");
		} else {
			andView.addObject("list", list);
			andView.setViewName("Result.jsp");
		}
		return andView;

	}

	public ModelAndView deleteEmployee(@RequestParam int id) {
		dao.delete(id);
		ModelAndView andView = new ModelAndView("index.jsp");
		List<Employee> list = dao.fetch();
		if (list.isEmpty()) {
//		andView.addObject("list",dao.fetch());
//			andView.addObject("msg", "No Data Found");
			andView.addObject("msg", "No Data Found");
			andView.setViewName("index.jsp");
		} else {
			andView.addObject("list", list);
			andView.addObject("msg", "Employee data deleted successfully");
			andView.setViewName("Result.jsp");

		}

		return andView;
	}

	

}
