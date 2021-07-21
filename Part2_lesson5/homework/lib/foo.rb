# frozen_string_literal: true

# Class food definition
class Foo
  attr_accessor :methods

  def initialize(methods = {})
    @methods = methods
  end

  def method_missing(name)
    methods[name]
  end

  def respond_to_missing?(method_name, include_private = false)
    methods.keys.include?(method_name) || super
  end
end
