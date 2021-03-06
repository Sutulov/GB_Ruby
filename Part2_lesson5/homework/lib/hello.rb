# frozen_string_literal: true

# Class greeting
class Hello
  def initialize(str)
    @str = str
  end

  def say
    "Hello, #{@str}!"
  end
end
