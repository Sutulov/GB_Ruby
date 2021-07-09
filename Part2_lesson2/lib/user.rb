# frozen_string_literal: true

# Class defining the user!
class User
  def set_name(name)
    @name = name
  end

  attr_reader :name
end
