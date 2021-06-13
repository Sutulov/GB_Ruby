# frozen_string_literal: true

colors = %w[Красный Оранжевый Жёлтый Зелёный Голубой Синий Фиолетовый]
r = Random.new
puts "Сучайный элемент массива: #{colors[r.rand(6)]}"
