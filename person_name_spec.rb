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
#teste
