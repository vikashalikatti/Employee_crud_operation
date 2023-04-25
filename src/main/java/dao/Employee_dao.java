package dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dto.Employee;

@Component
public class Employee_dao {

	@Autowired
	EntityManager manager;
	
	public void save(Employee employee) {
		manager.getTransaction().begin();
		manager.persist(employee);
		manager.getTransaction().commit();
	}

	public List<Employee> fetch(){
	return manager.createQuery("select x from Employee x").getResultList();	
	}
}
