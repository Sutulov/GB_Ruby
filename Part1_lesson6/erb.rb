# frozen_string_literal: true

require 'erb'

template = 'Текущее время <%= Time.now %>'
puts ERB.new(template).result
