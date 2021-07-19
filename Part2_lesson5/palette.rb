class Palette
  def initialize(colors = [])
    @colors = colors
  end

  def each
    @colors.each { |c| yield c }
  end
end

colors = %w[Красный Оранжевый Жёлтый Зелёный
             Голубой Синий Фиолетовый]
p pal = Palette.new(colors)
pal.each { |color| puts color }
