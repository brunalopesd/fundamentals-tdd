class Person
    def initialize(first_name:)
      @first_name = first_name
    end
  
    def be_valid
        return ("#{@first_name}")
    end

    def be_invalid
        if (@first_name == nil)
            return 
        else (@first_name == ' ')
            return ' '
        end
    end
end


describe Person do
  
    it " its valid with a first name " do 
      person = Person.new(first_name: "Bruna")
  
      expect(person.be_valid).to eq ('Bruna')
    
    end 
  
    it "is invalid without a first name" do 
      person = Person.new(first_name: nil)
  
      expect(person.be_invalid).to eq(nil)
    end 
  
    it "is invalid with a blank space on first name" do 
      person = Person.new(first_name:' ')
  
      expect(person.be_invalid).to eq (' ')
    end  
  
  end
  