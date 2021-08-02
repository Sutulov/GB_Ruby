# frozen_string_literal: true

require_relative 'user'

class Moderator < User
  attr_accessor :access_level
end
