# frozen_string_literal: true

str = <<~here
      Проверка строк heredoc.
      Это новый способ создания
      строк!!! #{2 + 2}
      here
puts str
