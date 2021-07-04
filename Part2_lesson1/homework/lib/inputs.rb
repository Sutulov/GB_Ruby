class Input
  def denominator
    begin
      puts 'Введите знаменатель больше нуля: '
      num = gets.to_f
    end while num <= 0 
    num
  end

  def denominator_2
    puts 'Введите знаменатель больше нуля: '
    num = gets.to_f
    num > 0 ? num : denominator_2
  end
end
