package tayduong.com.k8sspringbootdiscovery.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import tayduong.com.k8sspringbootdiscovery.entity.Employee;
import tayduong.com.k8sspringbootdiscovery.repository.EmployeeRepo;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class EmployeeController {

    private final EmployeeRepo employeeRepo;

    @GetMapping("/employee/{id}")
    public String getEmployee(@PathVariable String id) {
        return "Hello " + employeeRepo.findById(id).get().getName();
    }

    @PostMapping("/employee")
    public String createEmployee(@RequestParam String employeeName) {
        Employee employee = new Employee(employeeName);
        employeeRepo.save(employee);
        return "Employee created with id: " + employee.getId();
    }

    @GetMapping("/employee")
    public String getAllEmployee() {
        List<Employee> employees = employeeRepo.findAll();
        StringBuilder sb = new StringBuilder();
        for (Employee employee : employees) {
            sb.append(employee.getName()).append("\n");
        }
        return sb.toString();
    }
}
