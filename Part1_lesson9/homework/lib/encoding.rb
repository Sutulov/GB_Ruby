# frozen_string_literal: true

# Класс делает правильное отображения кириллицы в windows
class Rus
  def encoding
    return unless Gem.win_platform?

    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [$stdin, $stdout].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
  end
end
