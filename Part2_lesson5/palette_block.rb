# frozen_string_literal: true

class Palette
  def initialize(colors = [])
    @colors = colors
    @colors = yield if block_given?
  end

  def each(&block)
    @colors.each(&block)
  end
end

pal = Palette.new do
  %w[Красный Оранжевый Жёлтый Зелёный
     Голубой Синий Фиолетовый]
end
pal.each { |color| puts color }
