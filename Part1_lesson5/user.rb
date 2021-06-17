# frozen_string_literal: true

# Класс пользователь
class User
  def set_surname(surname)
    @surname = surname
  end

  attr_reader :surname, :name, :snd_name

  def set_name(name)
    @name = name
  end

  def set_snd_name(snd_name)
    @snd_name = snd_name
  end
end

student = User.new
teacher = User.new

student.set_surname('Иванов')
student.set_name('Иван')
student.set_snd_name('Иванович')

teacher.set_surname('Петров')
teacher.set_name('Пётр')
teacher.set_snd_name('Петрович')

puts "Студент: #{student.surname} #{student.name} #{student.snd_name}"
puts "Преподаватель: #{teacher.surname} #{teacher.name} #{teacher.snd_name}"
