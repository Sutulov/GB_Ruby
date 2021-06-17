class User
  def set_s(s)
    @s = s	
  end

  def s
    @s
  end

  def set_name(name)
    @name = name
  end

  def name
    @name
  end

  def set_snd_name(snd_name)
    @snd_name = snd_name
  end

  def snd_name
    @snd_name
  end
end

student = User.new
teacher = User.new

student.set_s('Иванов')
student.set_name('Иван')
student.set_snd_name('Иванович')

teacher.set_s('Петров')
teacher.set_name('Пётр')
teacher.set_snd_name('Петрович') 

puts 'Студент: ' + student.s + ' ' + student.name + ' ' + student.snd_name
puts 'Преподаватель: ' + teacher.s + ' ' + teacher.name + ' ' + teacher.snd_name
