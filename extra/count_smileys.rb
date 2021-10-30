# frozen_string_literal: true

def count_smileys(arr)
  if arr.empty?
    0
  else
    arr.reduce(0) do |m, i|
      if i[0] == ';' || i[0] == ':'
        if i.size == 3
          m += 1 if (i[1] == '-' || i[1] == '~') && (i[2] == ')' || i[2] == 'D')
        elsif i.size == 2 && (i[1] == ')' || i[1] == 'D')
          m += 1
        end
      end
      m
    end
  end
end

arr = [';D', ':-(', ':-)', ';~)']

p count_smileys(arr)
