describe Calculator do
  describe "#add" do
      it "retuns the sum of its two argumets" do
          calc =  Calculator.new

          expect(calc.add(5, 10)).to eq(15)  
      end
      it "returns the sum of two differet arguments" do
          calc = Calculator.new

          expect(calc.add(1, 2)).to eq(3) 
      end
  end
  describe "#factorial" do
      it "retunrs 1 when given 0" do
          calc = Calculator.new

          expect(calc.factorial(0)).to  eq(1)
      end

       it "returns 120 when given 5" do
          calc = Calculator.new

          expect(calc.factorial(5)).to eq(120)  
       end
  end

  describe "#subtract" do
    it "retunrs subtract of two numbers" do
        calc = Calculator.new

        expect(calc.subtract(2-1)).to  eq(1)
    end
end
