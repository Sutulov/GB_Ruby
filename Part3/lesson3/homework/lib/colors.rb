# frozen_string_literal: true

COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze

# Module open of Kernel
module Kernel
  COLORS.each do |name, value|
    define_method(name) do
      value
    end
  end
end
