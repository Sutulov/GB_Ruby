require 'exifr/jpeg'

p EXIFR::JPEG.new('lib/test.jpeg').date_time
