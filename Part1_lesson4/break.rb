# frozen_string_literal: true

# Проверка изменения класса Integer
class Integer
  def +(_other)
    'not good'
  end
end

puts 2 + 2
puts 3000 + 600
