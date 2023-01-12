employee1 = Employee.new({ first_name: "Suzie", last_name: "Pepper", salary: 80000, active: true })
employee2 = Employee.new({ first_name: "April", last_name: "Rhodes", salary: 70000, active: true })

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises
p employee1
p employee2

intern = Intern.new(first_name: "Ken", last_name: "Tanaka", salary: 5000, active: true)
intern.print_info
intern.send_report
