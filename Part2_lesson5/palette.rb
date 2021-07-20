# frozen_string_literal: true

class Palette
  def initialize(colors = [])
    @colors = colors
  end

  def each(&block)
    @colors.each(&block)
  end
end

colors = %w[Красный Оранжевый Жёлтый Зелёный
            Голубой Синий Фиолетовый]
p pal = Palette.new(colors)
pal.each { |color| puts color }
