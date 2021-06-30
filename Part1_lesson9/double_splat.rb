def greeting(params, **nil)
  p params
end

greeting({first: 'world', second: 'Ruby'})
# greeting(first: 'world', second: 'Ruby') no keywords accepted (ArgumentError)
