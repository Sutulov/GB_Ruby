# frozen_string_literal: true

require_relative 'surface_transport'

# Class of dry-cargos
class DryCargo < SurfaceTransport
  attr_accessor :cargo_hold, :crane
end
