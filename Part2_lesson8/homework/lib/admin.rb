require_relative 'user'

class Admin < User
  attr_accessor :access_level
end
