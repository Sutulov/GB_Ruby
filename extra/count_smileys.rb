# frozen_string_literal: true

def count_smileys(arr)
  arr.reduce(0) do |m, i|
    if i.start_with?(';', ':') && i.end_with?(')', 'D')
      case i.size
      when 3
        m += 1 if i[1] == '-' || i[1] == '~'
      when 2
        m += 1
      end
    end
    m
  end
end

arr = [';D', ':-(', ':-)', ';~)']

p count_smileys(arr)
