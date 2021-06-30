def sum(*params)
  params.map(&:to_i).sum
end
puts sum(*ARGV)
