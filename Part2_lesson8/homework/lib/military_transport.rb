require_relative 'surface_transport'

class MiliteryTransport < SurfaceTransport
  attr_accessor :cargo_hold, :crane, :missiles
end