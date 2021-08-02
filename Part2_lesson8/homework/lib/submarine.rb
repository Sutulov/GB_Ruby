# frozen_string_literal: true

require_relative 'underwater_transport'

# Class of Submarines
class Submarine < UnderwaterTransport
  attr_accessor :missiles, :torpedoes
end
