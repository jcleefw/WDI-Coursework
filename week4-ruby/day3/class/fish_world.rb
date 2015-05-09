require 'pry'

class Fish
  # pre-define methods. Every class has this
  def initialize name, health, speed
    @health = health
    @speed = speed
    @name = name
  end

  # Read-Only Methods
  def health
    @health
  end

  #Write
  def set_health value
    @health = value
  end

  # this method is the same as set_health
  # But i can pass in the value health=500
  def health=(value)
    @health = value
  end

  # Read-Only Methods
  def speed
    @speed
  end

  #Write
  def speed= value
    @speed = value
  end

  def name
    @name
  end

  def name= value
    @name = value
  end

  def sleep
    @health += 10
  end

  def pretty_output
    "my name is #{@name} i am a pretty fish"
  end

  # pre-define methods. Every class has this
  # if you call puts or print - this method will be call automatically
  def to_s
    "my name is #{@name} i am a pretty fish"
  end

end

f1 = Fish.new('fishy fish', 100, 5)
f2 = Fish.new('Sharky shark', 5000, 15)

class World
  def initialize
    @ocean = []
  end

  def ocean
    @ocean
  end

  def add_fish fish
    @ocean << fish
  end
end
binding.pry