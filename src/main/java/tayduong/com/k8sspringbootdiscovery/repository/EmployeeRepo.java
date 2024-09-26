package tayduong.com.k8sspringbootdiscovery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tayduong.com.k8sspringbootdiscovery.entity.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, String> {
}
