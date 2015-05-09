require 'active_record'

activerecord_options = {
  adapter: 'postgresql',
  database: 'codyperry'
}

ActiveRecord::Base.establish_connection activerecord_options