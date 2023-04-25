package helper;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan({"controller","dto","dao","service"})
public class MyConfiguration {
	@Bean
	public EntityManager getEMF() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}

}
