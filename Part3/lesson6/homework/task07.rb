class Integer
  def to_a(x = 'x')
    case x
    when 'x'
      (('%b' % self).split '').map(&:to_i)
    when 8
      (('%o' % self).split '').map(&:to_i)
    when 16
      (('%x' % self).split '').map { |x| x }
    end
  end
end

p 10.to_a
p 10.to_a(8)
p 10.to_a(16)
