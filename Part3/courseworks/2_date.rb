require 'exifr/jpeg'

puts EXIFR::JPEG.new('lib/ruby.jpg').date_time
p EXIFR::JPEG.new('lib/image.jpg').date_time
puts EXIFR::JPEG.new('lib/ruby.jpg').width
p EXIFR::JPEG.new('lib/large.jpg').date_time
