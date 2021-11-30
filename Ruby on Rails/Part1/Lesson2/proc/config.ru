require 'rack'

run ->(env) { [200, {}, ['Hello, world!']] }
