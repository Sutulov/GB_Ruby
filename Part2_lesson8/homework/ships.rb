# frozen_string_literal: true

require_relative 'lib/dry_cargo'

ship = DryCargo.new

ship.cargo_hold = 1500
ship.crane = true
ship.displacement = 2000
ship.speed = 100
ship.lifting_capacity = 5000
ship.number_of_crew = 46

p ship
