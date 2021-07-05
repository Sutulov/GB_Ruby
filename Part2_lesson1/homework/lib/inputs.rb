# frozen_string_literal: true

# Class checks the denominator
class Input
  def self.denominator
    num = 0
    loop do
      puts 'Введите знаменатель больше нуля: '
      num = gets.to_f
      break unless num <= 0
    end
    num
  end

  def self.denomin
    puts 'Введите знаменатель больше нуля: '
    num = gets.to_f
    num.positive? ? num : denomin
  end
end
