# frozen_string_literal: true

rainbow = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'жёлтый',
  green: 'зелёный',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}

rainbow.each { |key, name| puts "#{key}: #{name}" }
