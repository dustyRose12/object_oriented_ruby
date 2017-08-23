# employee_1 = ["Jimmy", "Stewart", 70000, true]
# employee_2 = ["Susan", "Messing", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_1[0]} #{employee_1[1]} makes #{employee_1[2]} a year."


# employee_1 = {:first_name => "Jimmy", :last_name => "Stewart", :salary => 70000, :active => true}
# employee_2 = {first_name: "Susan", last_name: "Messing", salary: 80000, :active true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."

# puts "#{employee_2[first_name:]} #{employee_2[last_name:]} makes #{employee_2[salary:]} a year."

class Employee

  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_case
    @salary = @salary * 1.05
  end

  # def first_name
  #   return @first_name
  # end

  # def last_name
  #   return @last_name
  # end

  # def active
  #   return @active
  # end

  def a
    5
  end

  def b
    a
  end

  # def active=(new_active)
  #   @active = new_active
  # end

end

employee_1 = Employee.new(
                                                first_name: "Jimmy", 
                                                last_name: "Stewart", 
                                                salary: 70000, 
                                                active: true)

employee_2 = Employee.new(
                                                first_name: "Susan", 
                                                last_name: "Messing", 
                                                salary: 80000, 
                                                active: true)

#employee_1.print_info
# employee_2.print_info
# employee_2.give_annual_case
# employee_2.print_info
# p employee_2.first_name.upcase
#p employee_2.active

#p employee_2.b #prints 5 because method b is calling method a, which returns 5

p employee_2.active
employee_2.active = false #it was originally written as employee_2.active=(false), which is the right syntax for the writer method active= but ruby lets you make it prettier.
p employee_2.active

#-----------------------------------------------------------------------

class Manager < Employee #this means the manager inherits all the stuff from an employee object

  # attr_reader :first_name, :last_name, :active
  # attr_writer :active

  # def initialize(input_options)
  #   @first_name = input_options[:first_name]
  #   @last_name = input_options[:last_name]
  #   @salary = input_options[:salary]
  #   @active = input_options[:active]
  # end

  # def print_info
  #   puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  # end

  # def give_annual_case
  #   @salary = @salary * 1.05
  # end

  def initialize(input_options)
    # @first_name = input_options[:first_name]
    # @last_name = input_options[:last_name]
    # @salary = input_options[:salary]
    # @active = input_options[:active]
    #you include the original initialize instance variables otherwise it overrides the original. shortcut way is using keyword super.
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    #code to send the email
    puts "Email Sent."
  end

end

manager = Manager.new(
                                          first_name: "Bob", 
                                          last_name: "Hoskins", 
                                          salary: 100000, 
                                          active: true,
                                          employees: [employee_1, employee_2]
                                          )

p employee_1
puts "--------------"
p manager
puts "--------------"


