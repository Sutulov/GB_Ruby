def rgb(r, g, b)
  def transform(num)
    if num < 0
      mum = '00'
    elsif num > 255
      num = 'FF'
    else
      num = num.to_s(16).upcase
      num = '0' + num if num.size < 2
    end
    num
  end
  transform(r) + transform(g) + transform(b)
end

puts rgb(0, 0, 0)
