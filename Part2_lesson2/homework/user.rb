# frozen_string_literal: true

require_relative 'lib/general'

arr_user = Array.new(10).map { User.new }
                .each do |element|
  element.surname,
  element.name,
  element.snd_name,
  element.mark = *element.query
end

User.average_user(arr_user) do |user|
  puts user
end
