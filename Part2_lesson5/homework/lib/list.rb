# class of object which can take an indefinable number of parameters
class List
  def initialize(*params)
   @params = params
  end

  def each
    yield @params
  end
end
