require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10) # => 15

class Calculator
    def add(number_a, number_b)
        number_a + number_b
    end
    
    def subtract(a, b)
        a - b
    end

    def divide(a, b)
        a / b unless b == 0
        return "Cannot divide per 0"

    def factorial(n)
        if n == 0
            1
        else
            (1..n).reduce(:*)
        end
    end
end
