%dw 2.0
output application/json
---
{
  activeEmployees: (payload.employees.*employee
    filter (emp) -> emp.status == "ACTIVE")
    map (emp) -> {
      employeeId:  emp.id,
      fullName:    emp.name,
      department:  emp.dept
    }
}
