require_relative 'lib/observer'

weather = HydrometeorologicalСenter.new

ministry_emergency_situations = MinistryEmergencySituations.new
weather.attach(ministry_emergency_situations)

school = School.new
weather.attach(school)

weather.some_business_logic
weather.some_business_logic

weather.detach(ministry_emergency_situations)

weather.some_business_logic