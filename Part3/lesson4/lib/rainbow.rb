class Rainbow
  include Enumerable
  COLORS = %w[красный оранжевый жёлтый зелёный
              голубой синий фиолетовый]

  def each
    COLORS.each { |c| yield c }
  end
end
