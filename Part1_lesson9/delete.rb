def greeting(params)
  puts params.delete :first
  puts params.delete :second
  p params
end

greeting(first: 'world', second: 'Ruby', third: 'hello')
