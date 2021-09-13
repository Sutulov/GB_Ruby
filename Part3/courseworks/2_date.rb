require 'exifr'
p File.stat('test.jpeg').ctime
p EXIFR::JPEG.new('test.jpeg').date_time
