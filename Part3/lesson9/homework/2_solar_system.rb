class NotExistingPlanetException < RuntimeError
end
PLANETS ={
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

class SolarSystem
  PLANETS.each do |name, value|
    define_method(name) do
      value
    end
  end
  
  def method_missing(method, *_args)
    raise NotExistingPlanetException, 'Такой планета нет!'
  end
end

planets = SolarSystem.new
p planets.mars
p planets.pluto
p planets.fluton


