# frozen_string_literal: true

require_relative 'surface_transport'

# Class of Militery transport
class MiliteryTransport < SurfaceTransport
  attr_accessor :cargo_hold, :crane, :missiles
end
