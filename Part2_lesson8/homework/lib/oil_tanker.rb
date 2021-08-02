# frozen_string_literal: true

require_relative 'surface_transport'

# Class of Oil tankers
class OilTanker < SurfaceTransport
  attr_accessor :cargo_hold
end
