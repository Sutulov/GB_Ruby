# frozen_string_literal: true

require_relative 'lib/observer'

weather = HydrometeorologicalCenter.new

ministry_emergency_situations = MinistryEmergencySituations.new
weather.attach(ministry_emergency_situations)

school = School.new
weather.attach(school)

road_service = RoadService.new
weather.attach(road_service)

weather.forecast
weather.forecast

weather.detach(ministry_emergency_situations)

weather.forecast
