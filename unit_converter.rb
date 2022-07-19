require "rspec/autorun"

# UnitConverter.new.convert(2, :cup, :liter) # => 0.473
# UnitConverter.new.convert(2, :cup, :gram) # => DimensionalMismatchError!!!
#new line

DimensionalMismatchError = Class.new(StandardError)


class UnitConverter
    def initialize(initial_amount, initial_unit, target_unit)
        @initial_amount = initial_amount
        @initial_unit = initial_unit
        @target_unit = target_unit

    end

    def convert
        @initial_amount * conversion_factor(from: @initial_unit, to: @target_unit)
    end 
    
    private

    CONVERSION_FACTORS = {
        cup: {
            liter: 0.236588
        }
    }

    def conversion_factor(from:, to:)
        if from == to 
            1
        else
            CONVERSION_FACTORS[from][to] || raise(DimensionalMismatchError, "Can't convert from #{from} to #{to}")
        end
    end

end

describe UnitConverter do
    describe "#convert"  do
        it "translates between objects of the same dimension " do
            converter = UnitConverter.new(2,:cup, :liter)

            result = converter.convert

            expect(result).to be_within(0.001).of(0.473)
        end

        it "raises an error if the two quantities are of differing dimensions" do
            converter = UnitConverter.new(2, :cup, :gram)
            
            expect{converter.convert}.to raise_error(DimensionalMismatchError)  
        end

        it "can convert between quantities of the same unit" do 
            converter = UnitConverter.new(:cup, :cup)

            result = converter.convert

            expect(result).to eq(:cup)

        end 
    end 
end 

