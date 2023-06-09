package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

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

	public List<Employee> fetch() {
		return manager.createQuery("select x from Employee x").getResultList();
	}

	public void delete(int id) {
		manager.getTransaction().begin();
		Employee employee = manager.find(Employee.class, id);
		if (employee != null) {
			manager.remove(employee);
		}
		manager.getTransaction().commit();
	}

	public Employee find(int id) {
		return manager.find(Employee.class, id);
	}
	
	public void update(Employee employee) {
		manager.getTransaction().begin();
		manager.merge(employee);
		manager.getTransaction().commit();
	}

}
