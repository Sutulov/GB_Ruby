# frozen_string_literal: true

require 'rack'

run ->(_env) { [200, {}, ['Hello, world!']] }
