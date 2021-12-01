require 'rack'
require 'rack/lobster'

map '/lobster' do
  run Rack::Lobster.new
end

run ->(env) { [200, {}, ['Hello, world!']] }
