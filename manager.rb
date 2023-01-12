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

