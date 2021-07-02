require_relative 'lib/class_user'
require_relative 'lib/encoding'
Rus.new.encoding

user1 = User.new
user2 = User.new
user3 = User.new
arr = [user1, user2, user3]
arr.each {|element| element.surname, element.name, element.snd_name = *(element.query)}
# puts arr.first.surname
# puts arr[1].surname
# puts arr.last.surname
# puts arr.first.name
# puts arr[1].name
# puts arr.last.name
puts user3.name
