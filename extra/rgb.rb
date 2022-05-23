# frozen_string_literal: true

def rgb(ron, gon, bon)
  '%02X' * 3 % [ron, gon, bon].map { |x| x.clamp(0, 255) }
end

puts rgb(300, -2, 18)
