COLORS = {
red: 'красный',
orange: 'оранжевый',
yellow: 'желтый',
green: 'зеленый',
blue: 'голубой',
indigo: 'синий',
violet: 'фиолетовый'
}

module Kernel
  def method_missing(name)
    COLORS[name]
  end
end
