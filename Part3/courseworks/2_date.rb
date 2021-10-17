# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

puts EXIFR::JPEG.new('data/app1.jpg').date_time
