class Array
  def for(n = 'x')
    loop { yield self } if n == 'x'
    (0..n-1).each { yield self }
  end
end

[*1..5].for(2) { |x| puts x }
