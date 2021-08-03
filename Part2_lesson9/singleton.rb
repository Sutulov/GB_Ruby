# frozen_string_literal: true

class Singleton
  def self.instance
    @@obj ||= new
  end

  def dup
    @@obj
  end

  private_class_method :new
  alias clone dup
end

first = Singleton.instance
p first
second = Singleton.instance
p second

p first.dup

p first.clone

third = Singleton.new
