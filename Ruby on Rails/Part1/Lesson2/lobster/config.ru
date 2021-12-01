# frozen_string_literal: true

require 'rack'
require 'rack/lobster'

map '/lobster' do
  run Rack::Lobster.new
end

run ->(_env) { [200, {}, ['Hello, world!']] }
