class Employee
    attr_reader :name
    def name=(name)
        if name == ""
            raise "Name can´t be blank!"
        end
        @name = name
    end

    def initialize(name = "Anonymous")
        self.name = name
    end

    def print_name
        puts "Name: #{name}"
    end
end

class SalariedEmployee < Employee
    attr_reader :salary
    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn´t valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (@salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay this period: #{formatted_pay}"
    end
end

class HourlyEmployee < Employee
    def self.security_guard(name)
        HourlyEmployee.new(name, 19.75, 30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 15.25, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.75, 20)
    end

    attr_reader :hourly_wage, :hour_per_week
    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "A hourly wage of #{hourly_wage} isn`t valid!"
        end
        @hourly_wage = hourly_wage
    end
    def hour_per_week=(hour_per_week)
        if hour_per_week < 0
            raise "#{hour_per_week} hours per week isn`t valid!"
        end
        @hour_per_week = hour_per_week
    end

    def initialize(name = "Anonymous", hourly_wage = 0, hour_per_week = 0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hour_per_week = hour_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hour_per_week * 2
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay this period: #{formatted_pay}"
    end
end


#Chamada dos métodos
jane = SalariedEmployee.new("Jane Done", 50000)
jane.print_pay_stub

angel = HourlyEmployee.security_guard("Angel More")
ivan  = HourlyEmployee.cashier("Ivan Matheews")

angel.print_pay_stub
ivan.print_pay_stub