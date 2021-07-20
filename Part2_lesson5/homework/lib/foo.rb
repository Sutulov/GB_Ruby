# Class food definition 
class Foo
  def initialize(methods = {})
    @methods = methods
  end

  def method_missing(name)
    @methods[name]
  end
end
