# frozen_string_literal: true

# class of object which can take an indefinable number of parameters
class List
  def initialize(*params)
    @params = params
  end

  def each(&block)
    @params.each(&block)
  end
end
