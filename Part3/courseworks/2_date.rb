require 'exifr/jpeg'

puts EXIFR::JPEG.new('lib/test.jpeg').date_time
