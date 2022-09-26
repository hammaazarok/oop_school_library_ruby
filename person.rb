class Person

    attr_reader :id
    attr_reader :name
    attr_reader :age
    def initialize (age , name = 'Unknown' , parent_permission = true)
        @id = Random.rand(0..1000)
        @name = name
        @age = age
        @parent_permission
    end

    def is_of_age?
        return @age > 17
    end

    def can_use_services?
        return is_of_age? || parent_permission
    end

    private :is_of_age?
end