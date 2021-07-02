require_relative 'lib/class_user'

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

print 'Введите ФИО пользователя: '
arr = *gets.split(' ').map(&:to_s)
p arr

user1 = User.new
user1.fio()


# student = User.new
# teacher = User.new

# student.set_surname('Иванов')
# student.set_name('Иван')
# student.set_snd_name('Иванович')

# teacher.set_surname('Петров')
# teacher.set_name('Пётр')
# teacher.set_snd_name('Петрович')

# puts "Студент: #{student.surname} #{student.name} #{student.snd_name}"
# puts "Преподаватель: #{teacher.surname} #{teacher.name} #{teacher.snd_name}"
