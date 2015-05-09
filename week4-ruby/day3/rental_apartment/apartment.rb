class Apartment
  # |Apartment - attribute|type|
  # |:----------|:-----------|
  # |price|decimal|
  # |is_occupied|boolean|
  # |sqft|integer|
  # |num_beds|integer|
  # |num_baths|integer|
  # |renters|array of person objects|

  attr_accessor :apname, :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize apname, price, is_occupied, sqft, num_beds, num_baths, renters
    @apname = apname
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = renters
  end
end


