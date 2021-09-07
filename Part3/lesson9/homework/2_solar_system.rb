# frozen_string_literal: true

# Class NotExistingPlanetException
class NotExistingPlanetException < RuntimeError
end
PLANETS = {
  mercury: 1,
  venus: 2,
  earth: 3,
  mars: 4,
  jupiter: 5,
  saturn: 6,
  uranus: 7,
  neptune: 8,
  pluto: 9
}.freeze

# Class Solar System
class SolarSystem
  PLANETS.each do |name, value|
    define_method(name) do
      value
    end
  end

  def method_missing(_method)
    raise NotExistingPlanetException, 'Такой у нас планеты нет!'
  end

  def respond_to_missing?(method_name, include_private = false)
    methods.keys.include?(method_name) || super
  end
end

planets = SolarSystem.new
p planets.mars
p planets.pluto
p planets.fluton
