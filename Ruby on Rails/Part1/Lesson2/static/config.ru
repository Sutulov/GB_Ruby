# frozen_string_literal: true

require 'rack'

map '/images' do
  run Rack::File.new 'images'
end

# Class App
class App
  attr_accessor :title, :description

  def initialize(title:, description:)
    @title = title
    @description = description
  end

  def call(_env)
    [200, { 'Content-Type' => 'text/html' }, [template]]
  end

  def template
    format(HTML, title, title, description)
  end

  HTML = <<~HTML
    <!DOCTYPE html>
    <html>
      <head>
        <title>%s</title>
        <meta charset="utf-8" />
      </head>
      <body>
        <h1>%s</h1>
        <p>
          <img
           width='200' height='150' src='/images/ruby.jpg'
           style='float: left; padding: 0 10px 0 0' />
          %s
        </p>
      </body>
    </html>
  HTML
end

run App.new(
  title: 'Язык программирования Ruby',
  description: <<~DES
    Ruby (англ. ruby — рубин, произносится — ру́би) — динамический, рефлективный,
    интерпретируемый высокоуровневый язык программирования[7][8].
    Язык обладает независимой от операционной системы реализацией многопоточности,
    сильной динамической типизацией, сборщиком мусора и многими другими возможностями[⇨].
    По особенностям синтаксиса он близок к языкам Perl и Eiffel, по объектно-ориентированному
    подходу — к Smalltalk. Также некоторые черты языка взяты из Python, Lisp, Dylan и Клу.
  DES
)
