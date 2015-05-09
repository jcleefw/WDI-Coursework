class Person

# |Person (assume tenants or prospective tenants)|type|
# |:----------|:-----------|
# |name|string|
# |age|integer|
# |gender|string|
# |apartment|apartment object|

  attr_accessor :firstname, :lastname, :age, :gender, :apartment

  def initialize firstname, lastname, age, gender, apartment
    @firstname = firstname
    @lastname = lastname
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def to_s
    "#{@firstname} #{@lastname} age #{age} is a #{@gender} who lives in #{@apartment}"
  end

end