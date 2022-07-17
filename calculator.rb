require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10) # => 15

class Calculator
    def add(num_a, num_b)
        num_a + num_b
    end

    def factorial(n)
        if n == 0
            1
        else
            (1..n).reduce(:*)
        end
    end
end
