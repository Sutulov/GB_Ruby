require 'rack'

class MyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    unless env['PATH_INFO'] == '/'
      return [404, {}, ['Not Found']]
    end
    @app.call(env)
  end
end

use MyMiddleware

run ->(env) { [200, {}, ['Hello, world!']] }
