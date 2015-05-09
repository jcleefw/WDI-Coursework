class Monster
  @@count = 0 # this is a class variale stay that the class is storing the variable of how many monster is created.
  def initialize
    @name = 'bob' # instance variable
    @@count += 1
  end

  def sleep # this belongs to the instance
  end

  def to_s # this belongs to the instance
  end

  def self.count # this belongs to the class
  end

end

# Monster.sleep # this will not work. because sleep is not class Monster Method

Monster.count #this will work. because count is Class Monster Method

# local Variable, monster instance
m1 = Monster.new('bob')
m2 = Monster.new('bebob')

m1.sleep
m2.sleep
