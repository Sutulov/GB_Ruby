# frozen_string_literal: true

colors = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}
p rus = colors.values.map(&:to_sym)
p eng = colors.keys.map(&:to_s)
p rus.zip(eng).to_h
