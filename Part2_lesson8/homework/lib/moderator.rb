require_relative 'user'

class Moderator < User
  attr_accessor :access_level
end
