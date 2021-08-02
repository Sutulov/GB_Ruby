# frozen_string_literal: true

require_relative 'user'

class Author < User
  attr_accessor :article
end
