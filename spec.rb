# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

class Person
    def initialize(first_name:, middle_name: nil, last_name:)
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
    end
  
    def full_name
        return ("#{@first_name} #{@middle_name} #{@last_name}")
    end

    def full_name_middle_name_missing
        if (@middle_name == nil)
            return ("#{@first_name} #{@last_name}")
        end
    end

    def full_name_with_middle_initial
        return ("#{@first_name} #{@middle_name[0].upcase} #{@last_name}")
    end

    def initials
        return("#{@first_name[0].upcase} #{@middle_name[0].upcase} #{@last_name[0].upcase}")
    end
end
  
RSpec.describe Person do
    describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
        person = Person.new(first_name:'Bruna', middle_name:'Lopes', last_name:'Medeiros')

        expect(person.full_name).to eq('Bruna Lopes Medeiros')
    end

    it "does not add extra spaces if middle name is missing" do
        person = Person.new(first_name:'Bruna', last_name:'Medeiros')

        expect(person.full_name_middle_name_missing).to eq('Bruna Medeiros')
    end

    describe "#full_name_with_middle_initial" do

        it "middle name with a initial" do
            person = Person.new(first_name:'Bruna', middle_name: 'Lopes', last_name:'Medeiros')

            expect(person.full_name_with_middle_initial).to eq('Bruna L Medeiros')
    
        end
    end    
    describe "#initials"
        it "validades only the initial letters" do 
            person = Person.new(first_name:'Bruna', middle_name: 'Lopes', last_name:'Medeiros')

            expect(person.initials).to eq('B L M')
        end
    end
end