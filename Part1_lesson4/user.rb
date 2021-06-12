class User
  def name
    'Иванов Иван Иваныч'
  end

  def age
    21
  end

  def job
    true
  end

  def greed
    0..1000
  end

  def snacks
    %w[попкорн спрайт]
  end
end

u = User.new
# puts "ФИО: #{u.name}"
# puts "Возраст: #{u.age}"
# puts "Наличие работы: #{u.job}"
# puts "Допустима ли цена в 500 рублей: #{u.greed.include? 500}"
# puts "Допустима ли цена в 3500 рублей: #{u.greed.include? 3_500}"
puts "#{u.name} предпочитает #{u.snacks.join(', ')}"
