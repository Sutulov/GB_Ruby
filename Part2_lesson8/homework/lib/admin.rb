# frozen_string_literal: true

require_relative 'user'

class Admin < User
  attr_accessor :access_level
end
