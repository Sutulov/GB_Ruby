# frozen_string_literal: true

require_relative 'user'

# Class admins
class Admin < User
  attr_accessor :access_level
end
