
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

