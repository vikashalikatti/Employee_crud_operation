package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dto.Employee;
import service.Employee_service;

@Controller
public class Employee_Controller {

	@Autowired
	Employee_service service;

	@RequestMapping("Loademployee")
	public ModelAndView loademployee() {
//		ModelAndView andView = new ModelAndView("Insert_data.jsp");
//		andView.addObject("employee", employee);
		return service.loademployee();
	}

	@PostMapping("saveemployee")
	public ModelAndView saveemployee(@ModelAttribute Employee employee, @RequestParam String Doj) {
//		employee.setDate(Date.valueOf(Doj));
//		dao.save(employee);
//				
//		ModelAndView andView = new ModelAndView("index.jsp");
//		andView.addObject("msg", "Data added sucessfully");
		return service.saveemployee(employee, Doj);
	}

	@GetMapping("fetchall")
	public ModelAndView fetch() {
		return service.fetch();
	}

	@GetMapping("delete")
	public ModelAndView delete(@RequestParam int id) {
		return service.deleteEmployee(id);
	}

	
}
