class Input
  def denominator
    begin
      puts 'Введите знаменатель больше нуля: '
      num = gets.to_f
    end while num <= 0 
    num
  end
end
