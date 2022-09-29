require './nameable'
class Person < Nameable
  attr_reader :id, :name, :age
  attr_accessor :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(0..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  def rentals_list(rental)
    @rentals.push(rental)
    rental.person = self
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  private :of_age?
end
