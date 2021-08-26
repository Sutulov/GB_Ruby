class Integer
  def to_a
    (('%b' % self).split '').map(&:to_i)
  end
end

p 10.to_a
