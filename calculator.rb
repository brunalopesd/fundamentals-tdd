require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10) # => 15

class Calculator
    def sum(number_a, number_b)
        number_a + number_b
    end
    
    def subtract(a, b)
        a - b
    end

    def multiply(a, b)
        a * b
    end

    def factorial(n)
        if n == 0
            1
        else
            (1..n).reduce(:*)
        end
    end

    def divide(a, b)
        return a - b unless b == 0
    end
end
