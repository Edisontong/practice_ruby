class Manager < Employee
  include Emailreportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    index = 0
    while index < @employees.length
      @employees[index].give_annual_raise
      index += 1
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises
p employee1
p employee2
