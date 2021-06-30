def sum(*params)
  params.sum
end

puts sum(*ARGV.map(&:to_i))
