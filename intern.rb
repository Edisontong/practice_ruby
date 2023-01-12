
class Intern < Employee
  include Emailreportable
end

intern = Intern.new(first_name: "Ken", last_name: "Tanaka", salary: 5000, active: true)
intern.print_info
intern.send_report
