class HelloWorld
  def +@
    puts 'Перегрузка операции +hello'
  end

  def -@
    puts 'Перегрузка операции -hello'
  end

  def !@
    puts 'Перегрузка операции !hello'
    true
  end
end

hello = HelloWorld.new

+hello
-hello
!hello
