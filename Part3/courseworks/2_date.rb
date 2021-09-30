# frozen_string_literal: true

require 'exifr/jpeg'

puts EXIFR::JPEG.new('lib/app1.jpg').date_time
