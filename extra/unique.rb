def unique_in_order(iterable)
  case iterable
  when Array
    iterable.uniq
  when String
    iterable.split('').uniq
  end
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order([1,2,2,3,3])
