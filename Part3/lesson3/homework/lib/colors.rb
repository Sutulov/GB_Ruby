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
  def method_missing(name)
    COLORS[name]
  end

  def respond_to_missing?(method_name, include_private = false)
    methods.keys.include?(method_name) || super
  end
end
