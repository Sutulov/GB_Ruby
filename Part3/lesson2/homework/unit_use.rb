# frozen_string_literal: true

require_relative 'lib/unit'

STAFF = {
  'Стас' => 'руководитель',
  'Игорь' => 'бэкенд-разработчик',
  'Кирилл' => 'бэкенд-разработчик',
  'Лиза' => 'фронтенд-разработчик',
  'Виктор' => 'фронтенд-разработчик',
  'Пётр' => 'тестировщик',
  'Анна' => 'дизайнер'
}.freeze
staff = Unit.new(STAFF)
staff.add('Максим', 'тестировщик')
staff.remove('Кирилл')
p staff
staff.list
puts staff.sort('тестировщик')
