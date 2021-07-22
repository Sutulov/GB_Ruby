# frozen_string_literal: true

ENG = %w[red orange yellow green gray indigo violet].freeze
RUS = %w[красный оранжевый желтый зеленый голубой синий фиолетовый].freeze
puts ENG.map(&:to_sym).zip(RUS).to_h
