def rgb(r, g, b)
  '%02X' * 3 % [r, g, b].map{ |x| x.clamp(0, 255) }
end

puts rgb(300, -2, 18)
