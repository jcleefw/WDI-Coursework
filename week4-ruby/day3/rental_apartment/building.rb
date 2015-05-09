class Building

# |Building - attribute|type|
# |:----------|:-----------|
# |address|string|
# |style|string|
# |has_doorman|boolean|
# |is_walkup|boolean|
# |num_floors|integer|
# |apartments|array of apartment objects|
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize address, style, has_doorman, is_walkup, num_floors, apartments
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = apartments
  end
end