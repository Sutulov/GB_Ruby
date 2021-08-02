# frozen_string_literal: true

require_relative 'ship'

# Class of Surface transport
class UnderwaterTransport < Ship
  attr_accessor :immersion_depth
end
