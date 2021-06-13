# frozen_string_literal: true

str = <<~HERE
  Проверка строк heredoc.
  Это новый способ создания
  строк!!! #{2 + 2}
HERE
puts str
