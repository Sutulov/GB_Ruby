# frozen_string_literal: true

require 'rack'

# Class MyMiddleware
class MyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    return [404, {}, ['Not Found']] unless env['PATH_INFO'] == '/'

    @app.call(env)
  end
end

use MyMiddleware

run ->(_env) { [200, {}, ['Hello, world!']] }
