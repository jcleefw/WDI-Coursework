class Person
  attr_accessor :name, :age, :gender

  def initialize name, age, gender
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    puts "#{@name} with age #{@age} is a #{@gender}"
  end

end