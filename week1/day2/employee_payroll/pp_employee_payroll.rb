# Week1 Day2 PP Challenge <Employee Payroll>

class Employee
  attr_reader :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def name
    @name
  end
end

class HourlyEmployee < Employee
  def initialize(name, email, hourly_rate, hours_worked)
    @name = name
    @email = email
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end

  def calculate_salary
    total_salary = @hourly_rate * @hours_worked
    total_salary
  end
end

class SalariedEmployee < Employee
  def initialize(name, email, yearly_rate)
      @name = name
      @email = email
      @yearly_rate = yearly_rate
  end

  def calculate_salary
    total_salary = @yearly_rate / 365 * 7
    total_salary
  end
end

class MultiPaymentEmployee < Employee
  def initialize(name, email, base_salary, hourly_rate, hours_worked)
      @name = name
      @email = email
      @base_salary = base_salary
      @hourly_rate = hourly_rate
      @hours_worked = hours_worked
  end

  def calculate_salary
    if @hours_worked > 40
      total_salary = @base_salary + (@hourly_rate * (@hours_worked-40))
    else
      total_salary = @base_salary
    end
    total_salary
  end
end

class Payroll
  def initialize(employees)
    @employees = employees
  end

  def notify_employee
    @employees.each { |employee|
    puts ">Dear #{employee.name}, your payment is made! \n  Please verify your account :)"
  }
  end

  def pay_employees
    weekly_pay = 0
    @employees.each { |employee| weekly_pay += employee.calculate_salary }
  puts ">The total amount spent on payroll this week is \n  $#{weekly_pay}."
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35,50)
josh.calculate_salary

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
nizar.calculate_salary

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
ted.calculate_salary

valentine = HourlyEmployee.new('valentine', 'valentine.barbierm@gmail.com', 15, 50)
valentine.calculate_salary

soy = HourlyEmployee.new('soy', 'soichiro.takasugi@gmail.com', 15, 50)
soy.calculate_salary
#
employees = [josh, nizar, ted, valentine, soy]
payroll = Payroll.new(employees)
payroll.pay_employees

payroll.notify_employee
