# frozen_string_literal: true

class Person
  attr_accessor :name

  def initialize(name:, score:)
    @name = name
    @score = score
  end

  def <=>(other)
    score <=> other.score
  end

  protected

  attr_reader :score
end
