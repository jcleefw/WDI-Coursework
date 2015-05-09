class User < ActiveRecord::Base
  #binding.pry
  has_secure_password

end