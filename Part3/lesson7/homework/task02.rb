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
p colors.each_with_object({}) { |(k, v), new| new[v.to_sym] = k.to_s }
