# frozen_string_literal: true

require_relative 'lib/general'

arr_user = Array.new(10).map { User.new }
                .each do |element|
  element.surname,
                               element.name,
                               element.snd_name,
                               element.mark = *element.query
end

average = arr_user.reduce(0) { |m, x| m + x.mark.to_i } / 10.0
arr_user.select { |user| user.mark.to_i > average.round }
        .each do |user|
  print user.surname, ' ',
        user.name, ' ',
        user.snd_name, ' - ',
        user.mark, "\n"
end
