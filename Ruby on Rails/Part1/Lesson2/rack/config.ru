require 'rack'

class App
  class << self
    def call(env)
      code = 200
      headers = { 'Content-Type' => 'text/html' }
      body = template('Hello, world!')

      unless env['PATH_INFO'] == '/'
        code = 404
        body = 'Not Found'
      end

      headers['Content-Length'] = body.length.to_s

      [code, headers, [body]]
    end

    def template(name)
      <<~HTML
      <!DOCTYPE html>
      <html>
        <head>
          <title>#{name}</title>
          <meta charset="utf-8" />
        </head>
        <body>
          <h1>#{name}</h1>
        </body>
      </html>
      HTML
    end
  end
end

run App
