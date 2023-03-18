class Hobbit
    attr_reader :name, :disposition, :age 
    def initialize(name, disposition = "homebody", is_short = true)
        @name = name
        @disposition = disposition
        @age = 0
        @is_short = is_short
    end
      

    def celebrate_birthday
        celebrate_birthday = @age += 1
    end

    def adult?
        return true if age > 32
        false
    end

    def old?
        return true if age > 100
        false
    end

    def has_ring?
        if @name == "Frodo"
            @has_ring = true
        end
    end

end
