require_relative 'lib/decorator'


simple = ConcreteComponent.new
client_code(simple)

decorator1 = ConcreteDecoratorA.new(simple)
decorator2 = ConcreteDecoratorB.new(decorator1)
client_code(decorator2)
