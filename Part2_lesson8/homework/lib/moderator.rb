# frozen_string_literal: true

require_relative 'user'

# Class of Moderators
class Moderator < User
  attr_accessor :access_level
end
