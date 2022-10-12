class Shelter
    attr_reader :name, :capacity, :pets
    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
    end

    def add_pet(pet_name)
        @pets << pet_name
    end

    def call_pets
        pets.map { |pet| "#{pet}!" }
    end

    def over_capacity?
        if 
            pets.count() > capacity
            return true
        else
            return false
        end
    end

    def adopt
        pets.shift
    end
end