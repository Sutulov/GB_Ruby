# frozen_string_literal: true

authors = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}

new = authors.each_with_object({}) do |(_k, v), hash|
  v.each do |i|
    hash[i] = if hash.key? i
                hash[i] + 1
              else
                1
              end
  end
end
value = new.values.uniq.sort
sort = value.each_with_object([]) { |i, arr| arr << (new.map { |k, v| k if v == i }).compact.sort }
p sort.flatten.each_with_object({}) { |i, hash| hash.merge!({ i => new.fetch(i) }) }
