module RomanNumbers
  ROM = %w[M CM D CD C XC L XL X IX V IV I]
  ARB = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

  def roman
    result = ''
    arb = self
    ARB.each_with_index { |num, i| 
                          while arb >= num do
                            arb -= num
                            result += ROM[i]
                          end 
                        }
    result
  end
end
