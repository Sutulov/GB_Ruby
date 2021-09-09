f = 'test.pdf'

File.open(f) do |file|
  p file.size / 1024.0 / 1024
end
