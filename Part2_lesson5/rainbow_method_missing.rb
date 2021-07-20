# frozen_string_literal: true

class Rainbow
  COLORS = {
    red: 'красный',
    orange: 'оранжевый',
    yellow: 'желтый',
    green: 'зеленый',
    blue: 'голубой',
    indigo: 'синий',
    violet: 'фиолетовый'
  }.freeze

  def method_missing(name)
    COLORS[name]
  end
end

rew = Rainbow.new
puts rew.yellow
puts rew.red
