block = Proc.new { |x| x.even? }
p [*1..10].select(&block)
