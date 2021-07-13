# frozen_string_literal: true

obj = Object.new

def obj.to_proc
  proc { |x| x * x }
end

p (1..5).map(&obj)
